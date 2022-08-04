from typing import Dict, Tuple
import pandas as pd
import numpy as np
import pickle
import os


def get_prediction(route: str, num_stops_segment: str, time: str) -> Dict[str, float]:
    """Return dictionary containing prediction given the input variables"""
    current_file_directory = os.path.dirname(os.path.realpath(__file__))

    print('finding search table')
    search_table_file_path = os.path.join(current_file_directory, 'search_file/search_table.pkl')

    print('finding model classifier')
    model_classifer_file_path = os.path.join(current_file_directory, 'search_file/model_classifier.pkl')

    print('finding pickle directory')
    pickle_directory_file_path = os.path.join(current_file_directory, 'Models')

    print('opening search table')
    search_table_pickle = pickle.load(open(search_table_file_path, 'rb'))

    print('opening model classifier')
    model_classifier_pickle = pickle.load(open(model_classifer_file_path, 'rb'))

    # Search pickle file to get the line relate data
    print('Searching for line id in pickl file')
    df = search_table_pickle[search_table_pickle['LINEID'] == str(route)]
    df = df.reset_index(drop=True)
    print(df)

    # Search the most close PLANNED_DURATION index
    print('getting planned duration index')
    planned_duration_index = np.searchsorted(df['PLANNEDTIME_ARR'], time, side='right')
    print(planned_duration_index)

    if planned_duration_index == len(df):
        planned_duration_index = planned_duration_index - 1

    # Get the PLANNED_DURATION according to index
    print('getting planned duration according to index')
    planned_duration = df.iloc[planned_duration_index]['PLANNED_DURATION']

    print('getting number of stops')
    num_stops = int(df.iloc[planned_duration_index]['NUMOFSTOP'])

    # Classifer by lineid and choose what features that should input

    print('getting model name')
    model_name = model_classifier_pickle[str(route)]
    if model_name == 'LR':
        print('model name is equal to lr')
        model_feature = ['PLANNED_DURATION']
        predict_input = [planned_duration]
    elif model_name == 'HOUR_LR' or model_name == 'HOUR_RF':
        print('model name is lr or rf')
        model_feature = ['PLANNED_DURATION', 'HOUR_sin', 'HOUR_cos']
        hour_sin, hour_cos = time_encoder(int(time))
        predict_input = [planned_duration, hour_sin, hour_cos]
    else:
        print('model feature is planned duration etc.')
        model_feature = ['PLANNED_DURATION', 'HOUR_sin', 'HOUR_cos', 'DISTANCE']
        hour_sin, hour_cos = time_encoder(int(time))
        distance = df.iloc[planned_duration_index]['DISTANCE']
        predict_input = [planned_duration,hour_sin,hour_cos,distance]

    return {"prediction": get_prediction_from_pickle_file(num_stops,
                                                          int(num_stops_segment),
                                                          model_feature,
                                                          predict_input,
                                                          route,
                                                          pickle_directory_file_path)}


def get_prediction_from_pickle_file(num_stops: int,
                                    num_stops_segment: int,
                                    model_feature: list,
                                    predict_input: list,
                                    route: str,
                                    pickle_directory_file_path: str) -> float:
    """Generate rounded prediction value from provided variables"""
    model = pickle.load(open(get_current_pickle_file_path(route, pickle_directory_file_path), 'rb'))
    if len(model_feature) > 1:
        print('model feature is greater than 1')
        full_route_prediction = float(model.predict(pd.DataFrame([predict_input], columns=model_feature)))
    else:
        print('model feature is less than 1')
        full_route_prediction = float(model.predict(pd.DataFrame([predict_input[0]])))
    current_segment_prediction = full_route_prediction * num_stops_segment / num_stops
    return round(current_segment_prediction / 60, 2)


def get_current_pickle_file_path(route: str, pickle_directory_file_path: str) -> str:
    """Generate file path for pickle file that corresponds to currently selected route"""
    pickle_name = '/LINE_' + route + '.pkl'
    current_pickle_file_path = f"{pickle_directory_file_path}{pickle_name}"
    return current_pickle_file_path


def time_encoder(time: int) -> Tuple[float, float]:
    if time >= 86400:
        hour = int((time-86400)/3600)
    else:
        hour = int(time/3600)
    hour_sin = np.sin(2 * np.pi * hour/23)
    hour_cos = np.cos(2 * np.pi * hour/23)
    return hour_sin, hour_cos

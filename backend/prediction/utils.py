from typing import Dict
import pandas as pd
import numpy as np
import pickle
import os


def get_prediction(route: str, num_stops_segment: str, time: str) -> Dict[str, float]:
    """Return dictionary containing prediction given the input variables"""
    current_file_directory = os.path.dirname(os.path.realpath(__file__))

    print(f"The route is {route}")
    print(f"The segments are {num_stops_segment}")
    print(f"The time is {time}")

    time_stops_file_path = os.path.join(current_file_directory, 'Models/LINE_TIME_STOPS.pickle')
    pickle_directory_file_path = os.path.join(current_file_directory, 'Models/LINE_Model')

    line_time_stops_pickle = pickle.load(open(time_stops_file_path, 'rb'))

    # Search pickle file to get the line relate data
    df = line_time_stops_pickle[line_time_stops_pickle['LINEID'] == str(route)]

    # Search the most close PLANNED_DURATION index
    planned_duration_index = np.searchsorted(df['PLANNEDTIME_ARR'], time, side='right')

    print(planned_duration_index)

    # Get the PLANNED_DURATION according to index
    planned_duration = df.iloc[planned_duration_index]['PLANNED_DURATION']
    num_stops = int(df.iloc[planned_duration_index]['NUM_STOPS'])

    return {"prediction": get_prediction_from_pickle_file(num_stops, int(num_stops_segment), planned_duration, route, pickle_directory_file_path)}


def get_prediction_from_pickle_file(num_stops: int, num_stops_segment: int, planned_duration: int, route: str, pickle_directory_file_path: str) -> float:
    """Generate rounded prediction value from provided variables"""
    model = pickle.load(open(get_current_pickle_file_path(route, pickle_directory_file_path), 'rb'))
    full_route_prediction = float(model.predict(pd.DataFrame([planned_duration]))[0])
    current_segment_prediction = full_route_prediction * num_stops_segment / num_stops
    return round(current_segment_prediction / 60, 2)


def get_current_pickle_file_path(route: str, pickle_directory_file_path: str) -> str:
    """Generate file path for pickle file that corresponds to currently selected route"""
    pickle_name = '/LINE_' + route + '.sav'
    current_pickle_file_path = f"{pickle_directory_file_path}{pickle_name}"
    return current_pickle_file_path

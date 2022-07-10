from typing import Dict
import requests
import pandas as pd
import numpy as np
import pickle
import os
from django.conf import settings

time_stops_url = os.path.join(settings.BASE_DIR, 'prediction/Models/LINE_TIME_STOPS.pickle')
pickle_url = os.path.join(settings.BASE_DIR, 'prediction/models/LINE_Model/')

LINE_TIME_STOPS = pickle.load(open(time_stops_url, 'rb'))


class Prediction:
    def __init__(self, prediction):
        self.prediction = prediction

'''Add Line_Base Prediction Model'''
def get_prediction(route: str, start_stop: str, finish_stop: str, time: str) -> Dict[str, any]:
    API_KEY = os.environ.get("GOOGLE_DIRECTION_API_KEY")
    url = "https://maps.googleapis.com/maps/api/directions/json?origin=%s&destination=%s&mode=transit&transit_mode=bus&key=%s"%(start_stop,finish_stop,API_KEY)
    payload = {}
    headers = {}
    response = requests.request("GET", url, headers=headers, data=payload)

    data = response.json()['routes'][0]['legs'][0]['steps']
    LINEID_MODEL = ['1', '11', '116', '118', '120', '122', '123', '13',
                    '130', '14', '140', '142', '145', '15', '150', '151',
                    '16', '26', '27', '33', '37', '38', '39', '4', '40',
                    '41', '42', '43', '44', '47', '49', '53', '61', '65',
                    '68', '69', '7', '70', '79', '83', '84', '9']
    PREDICT_TIME = 0
    for i in range(len(data)):
        if data[i]['travel_mode']=='TRANSIT':
            '''Get data from google api'''
    #         get the segment line id
            LINEID = data[i]['transit_details']['line']['short_name']
            if LINEID in LINEID_MODEL:
        #     only predict based on exsit model
        #     get the number of stops passing within this line
                NUM_STOP_SEGMENT = data[i]['transit_details']['num_stops']
        #     LINE route start time
                TIME = data[i]['transit_details']['departure_time']['text']
    #         conver the start time to second
                hour, minute = TIME[:-2].split(':')
                START_TIME = int(hour) * 3600 + int(minute)*6
                if TIME[-2:] == 'pm':
                    START_TIME = START_TIME + 12*3600
        #     data preparation
        #     search pickle file to get the line relate data
                df = LINE_TIME_STOPS[LINE_TIME_STOPS['LINEID']==str(LINEID)]
        #     search the most close PLANNED_DURATION index
                PLANNED_DURATION_INDEX = np.searchsorted(df['PLANNEDTIME_ARR'], START_TIME, side='right')
        #     get the PLANNED_DURATION according to index
                PLANNED_DURATION = df.iloc[PLANNED_DURATION_INDEX]['PLANNED_DURATION']
                NUM_STOPS = df.iloc[PLANNED_DURATION_INDEX]['NUM_STOPS']
                pickle_name = '/LINE_' + LINEID + '.sav'
                current_pickle_url = f"{pickle_url}{pickle_name}"
                model = pickle.load(open(current_pickle_url, 'rb'))
                PREDICT_TIME += float(model.predict(pd.DataFrame([PLANNED_DURATION]))[0]) * int(NUM_STOP_SEGMENT) / int(NUM_STOPS)
            else:
                PREDICT_TIME += data[i]['duration']['value']
        else:
            PREDICT_TIME += data[i]['duration']['value']
    output = round(PREDICT_TIME / 60, 2)

    return {"prediction": output}

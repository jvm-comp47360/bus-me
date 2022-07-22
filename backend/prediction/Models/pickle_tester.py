from copyreg import pickle
import pandas as pd
import numpy as np
import pickle

line_time_stops_pickle = pickle.load(open("LINE_TIME_STOPS.pickle", "rb"))

df = line_time_stops_pickle[line_time_stops_pickle["LINEID"] == "39"]

print(df)
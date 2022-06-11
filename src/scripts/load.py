import csv
import os


def run():
    bus_stops_file_path = open("../../database/stops.csv")
    bus_stops_file = csv.reader(bus_stops_file_path)

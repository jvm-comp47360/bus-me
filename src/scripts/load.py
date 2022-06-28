# Small script to read through CSV file and add bus stops to database.
# Note that this is only expected to be run once and as such tests have not been provided.

import csv
from typing import List

from src.bus_stops.models import BusStops


def run() -> None:
    """Reads through the CSV file and adds to Django database"""
    with open("../../database/stops&lines.csv", "r", encoding="utf8") as bus_stops_file:
        bus_stops_file_reader = csv.reader(bus_stops_file)
        next(bus_stops_file_reader, None)  # Skips the header row

        # Deletes all existing objects if you need to reset the database
        # BusStops.objects.all().delete()

        for bus_stop_entry in bus_stops_file_reader:
            add_bus_stop_to_database(bus_stop_entry)

    bus_stops_file.close()


def add_bus_stop_to_database(bus_stop_entry: List[str]) -> None:
    """Reviews a line from the CSV file and adds it to the Django model and database"""
    bus_stop_id = bus_stop_entry[0]
    name = bus_stop_entry[1]
    number = bus_stop_entry[2]
    latitude = bus_stop_entry[3]
    longitude = bus_stop_entry[4]
    lines = bus_stop_entry[5]

    BusStops.objects.create(id=bus_stop_id, name=name, number=number, latitude=latitude, longitude=longitude, lines=lines)

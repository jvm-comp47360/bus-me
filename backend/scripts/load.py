# Small script to read through CSV file and add bus stops to database.
# Note that this is only expected to be run once and as such tests have not been provided.

import csv
from typing import List

from bus_stops.models import BusStops, BusRoutes, RouteConnections


def run() -> None:
    delete_all_previous()

    routes_storage = {}

    with open("routes.csv", "r", encoding="utf8") as routes_file:

        routes_file_reader = csv.reader(routes_file)
        next(routes_file_reader, None)
        for route_entry in routes_file_reader:
            route_id = route_entry[0]
            route_name = route_entry[1]

            current_route = BusRoutes.objects.create(id=route_id, name=route_name)
            routes_storage[route_name] = current_route

    """Reads through the CSV file and adds to Django database"""
    with open("stops&lines.csv", "r", encoding="utf8") as bus_stops_file:
        bus_stops_file_reader = csv.reader(bus_stops_file)
        next(bus_stops_file_reader, None)  # Skips the header row

        for bus_stop_entry in bus_stops_file_reader:
            print(bus_stop_entry)
            add_bus_stop_to_database(bus_stop_entry, routes_storage)

    bus_stops_file.close()


def add_bus_stop_to_database(bus_stop_entry: List[str], routes_storage) -> None:
    """Reviews a line from the CSV file and adds it to the Django model and database"""
    bus_stop_id = bus_stop_entry[0]
    name = bus_stop_entry[1]
    number = bus_stop_entry[2]
    latitude = bus_stop_entry[3]
    longitude = bus_stop_entry[4]

    # This will need to be parsed into a Python list
    routes = get_routes_from_bus_stops(bus_stop_entry[5])

    current_stop = BusStops.objects.create(id=bus_stop_id, name=name, number=number, latitude=latitude, longitude=longitude)

    for route in routes:
        try:
            current_route = routes_storage[route]
            RouteConnections.objects.create(bus_stop=current_stop, bus_route=current_route)
        except:
            print("there is an error")


def get_routes_from_bus_stops(routes: str) -> List[str]:
    no_brackets = routes.replace("\"", "").replace("'", "").replace("[", "").replace("]", "")
    return no_brackets.split(", ")

def delete_all_previous():
    BusStops.objects.all().delete()
    BusRoutes.objects.all().delete()
    RouteConnections.objects.all().delete()

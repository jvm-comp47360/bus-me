# Small script to read through CSV file and add bus stops to database.
# Note that this is only expected to be run once and as such tests have not been provided.

import csv
from typing import List, Dict

from bus_stops.models import BusStops, BusRoutes, RouteConnections


def run() -> None:
    delete_all_previous()

    bus_stops_used = []
    bus_stops_storage = {}


    """Reads through the CSV file and adds to Django database"""
    with open("routes_new.csv", "r", encoding="utf8") as bus_routes_file:
        bus_routes_file_reader = csv.reader(bus_routes_file)
        next(bus_routes_file_reader, None)  # Skips the header row

        for bus_route_entry in bus_routes_file_reader:
            bus_stops = list(get_bus_stops_from_routes(bus_route_entry[2]))
            for bus_stop in bus_stops:
                if bus_stop not in bus_stops_used:
                    bus_stops_used.append(bus_stop)

    """Reads through the CSV file and adds to Django database"""
    with open("stops.csv", "r", encoding="utf8") as bus_stops_file:
        bus_stops_file_reader = csv.reader(bus_stops_file)
        next(bus_stops_file_reader, None)  # Skips the header row

        for bus_stop_entry in bus_stops_file_reader:
            if bus_stop_entry[0] in bus_stops_used:
                current_stop = add_bus_stop_to_database(bus_stop_entry)
                bus_stops_storage[current_stop.id] = current_stop

    bus_stops_file.close()

    """Reads through the CSV file and adds to Django database"""
    with open("routes_new.csv", "r", encoding="utf8") as bus_routes_file:
        bus_routes_file_reader = csv.reader(bus_routes_file)
        next(bus_routes_file_reader, None)  # Skips the header row

        current_bus_id = 0
        for bus_route_entry in bus_routes_file_reader:
            add_bus_route_to_database(current_bus_id, bus_route_entry, bus_stops_storage)
            current_bus_id = current_bus_id + 1

    bus_stops_file.close()


def add_bus_stop_to_database(bus_stop_entry: List[str]) -> BusStops:
    """Reviews a line from the CSV file and adds it to the Django model and database"""
    bus_stop_id = bus_stop_entry[0]
    name = bus_stop_entry[1]
    number = bus_stop_entry[2]
    latitude = bus_stop_entry[3]
    longitude = bus_stop_entry[4]

    return BusStops.objects.create(id=bus_stop_id, name=name, number=number, latitude=latitude, longitude=longitude)


def get_bus_stops_from_routes(routes: str) -> List[str]:
    no_brackets = routes.replace("\"", "").replace("'", "").replace("[", "").replace("]", "")
    return no_brackets.split(", ")


def add_bus_route_to_database(route_id: int, bus_route_entry: List[str], bus_stops_storage: Dict[str, BusStops]) -> None:
    """Reviews a line from the CSV file and adds it to the Django model and database"""
    route_id = route_id
    route_name = bus_route_entry[0]
    route_terminus = bus_route_entry[1]

    current_route = BusRoutes.objects.create(id=route_id, name=f"{route_name} (to {route_terminus})")

    bus_stops = list(get_bus_stops_from_routes(bus_route_entry[2]))
    for stop in bus_stops:
        try:
            current_stop = bus_stops_storage[stop]
            RouteConnections.objects.create(bus_stop=current_stop, bus_route=current_route)
        except:
            print(f"Can't find a stop at route {route_name} with terminus {route_terminus}")


def delete_all_previous():
    BusStops.objects.all().delete()
    BusRoutes.objects.all().delete()
    RouteConnections.objects.all().delete()

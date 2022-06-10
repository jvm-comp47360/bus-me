# A short script to convert the unmodified bus stop CSV into a more sensible format for the database.
# Note: This is just a short script that is going to be used once, and as such no testing has been carried out.

import typing
from pathlib import Path

bus_stop_file = "stops.txt"


def stop_is_in_dublin(current_bus_stop: str) -> bool:
    """Returns true if bus stop is associated with Dublin area"""
    stop_id = current_bus_stop.split(",")[0]
    if "DB" in stop_id:
        return True
    return False


def get_formatted_csv_headers(csv_header: str) -> str:
    """Returns CSV headers with neater formatting and additional column"""
    csv_header_list = csv_header.replace("stop_", "").split(",")
    csv_header_list.insert(2, "number")
    return ",".join(csv_header_list)


def format_bus_stop_in_file(bus_stops_file: typing.IO, current_bus_stop: str) -> None:
    """If bus stop is in Dublin, writes to file formatted bus stop file"""
    if stop_is_in_dublin(current_bus_stop):
        bus_stops_file.write(current_bus_stop.replace("\"", "").replace(" stop ", ""))


def format_text_file_content(file_name: typing) -> None:
    """Reads the .txt file and makes appropriate edits"""
    with open(file_name, "r+", encoding="utf8") as bus_stops_file:
        bus_stops = bus_stops_file.readlines()
        bus_stops_file.seek(0)

        bus_stops_file.writelines(get_formatted_csv_headers(bus_stops[0]))

        for bus_stop in bus_stops:
            format_bus_stop_in_file(bus_stops_file, bus_stop)

        bus_stops_file.truncate()
    bus_stops_file.close()


def convert_to_csv(file_name: typing) -> None:
    """Converts .txt file to .csv"""
    bus_stops_file_path = Path(file_name)
    bus_stops_file_path.rename(bus_stops_file_path.with_suffix(".csv"))


if __name__ == "__main__":
    format_text_file_content(bus_stop_file)
    convert_to_csv(bus_stop_file)










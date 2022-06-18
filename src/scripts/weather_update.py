#update the current_weather database
import sys
sys.path.append('..')
from Weather_API.models import Weather
import csv
from typing import List
from decouple import config
import requests
import time

OpenWeatherAPI_KEY = config("WEATHER_API_KEY")
OpenWeatherAPI_URL = "https://api.openweathermap.org/data/2.5/weather?lat={}&lon={}&appid={}"

def run() -> None:
    """Reads through the CSV file, get each station position
        use they to get current weather from OpenWeather API and load them into the database"""
    with open("stops.csv", "r", encoding="utf8") as bus_stops_file:
        bus_stops_file_reader = csv.reader(bus_stops_file)
        next(bus_stops_file_reader, None)  # Skips the header row

        # Deletes all existing objects if you need to reset the database
        Weather.objects.all().delete()

        for bus_stop_entry in bus_stops_file_reader:
            add_weather_to_database(bus_stop_entry)
            # Can cause connection refuse without sleep
            time.sleep(1)

    bus_stops_file.close()

def add_weather_to_database(bus_stop_entry: List[str]) -> None:
    id = bus_stop_entry[0]
    lat = bus_stop_entry[-2]
    lon = bus_stop_entry[-1]
    weather_response = requests.get(OpenWeatherAPI_URL.format(lat,lon,OpenWeatherAPI_KEY))
    weather = weather_response.json()['weather'][0]['main']
    temperature = weather_response.json()['main']['temp']
    Weather.objects.create(id=id, weather=weather, temperature=temperature)
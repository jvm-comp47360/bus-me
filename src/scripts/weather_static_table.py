import sys
sys.path.append('..')
from Weather_API.models import Weather
import csv
from typing import List

def run() -> None:
    """Reads through the CSV file, get each station position
        use they to get current weather from OpenWeather API and load them into the database"""
    with open("current_weather.csv", "r", encoding="utf8") as current_weather_file:
        current_weather_file_reader = csv.reader(current_weather_file)
        next(current_weather_file_reader, None)  # Skips the header row

        # Deletes all existing objects if you need to reset the database
        Weather.objects.all().delete()

        for current_weather_entry in current_weather_file_reader:
            add_weather_to_database(current_weather_entry)
            # Can cause connection refuse without sleep

    current_weather_file.close()
def add_weather_to_database(current_weather_entry: List[str]) -> None:
    id = current_weather_entry[0]
    weather = current_weather_entry[1]
    temperature = current_weather_entry[2]
    
    Weather.objects.create(id=id, weather=weather, temperature=temperature)
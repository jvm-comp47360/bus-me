from typing import Dict
import requests
import schedule
import environ
import os
import time
from pathlib import Path
from datetime import date

env = environ.Env()
# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent
environ.Env.read_env(os.path.join(BASE_DIR, '.env'))

# Obtaining OpenWeather API key
OpenWeatherAPI_KEY = os.getenv("OpenWeatherAPI_KEY")
OpenWeatherAPI_URL = "https://api.openweathermap.org/data/2.5/weather?lat={}&lon={}&appid={}"

partialCloudsIcons = ['03d', '03n', '02n', '02d']


def get_weather(icon, weather_response):
    if icon in partialCloudsIcons:
        return 'Partial Clouds'
    else:
        return weather_response.json()['weather'][0]['main']


# Static function for pulling information from OpenWeather API into JSON object
def pull_current_weather_from_api() -> Dict[str, str]:
    lat = 53.33947559137039
    lon = -6.248868208190408

    weather_response = requests.get(OpenWeatherAPI_URL.format(lat, lon, OpenWeatherAPI_KEY))
    icon = weather_response.json()['weather'][0]['icon']
    date = get_current_date()
    weather = get_weather(icon, weather_response)
    temperature = get_current_temperature(weather_response.json()['main']['temp'])

    return {"icon": icon, "date": date, "weatherText": weather, "temperature": temperature}


def get_current_date() -> str:
    return str(date.today().strftime("%d/%m/%y"))


def get_current_temperature(weather_response: str) -> str:
    return str(round(float(weather_response) - 273.15, 2))


# Class for interacting with app views
class Weather:
    def __init__(self):
        self.current_weather = pull_current_weather_from_api()

    def __set_current_weather(self) -> None:
        self.current_weather = self.get_current_weather()

    def get_current_weather(self) -> Dict[str, str]:
        return self.current_weather

    def update_current_weather(self) -> None:
        schedule.every(60).minutes.do(self.get_current_weather)


# Initialise weather object and set to update every fixed time period
# current_weather = Weather()
# current_weather.update_current_weather()
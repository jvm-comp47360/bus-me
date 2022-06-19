from typing import Dict
import requests
import time
from decouple import config

OpenWeatherAPI_KEY = config("WEATHER_API_KEY")
OpenWeatherAPI_URL = "https://api.openweathermap.org/data/2.5/weather?lat={}&lon={}&appid={}"


class Weather:
    def __init__(self, weather, temperature):
        self.weather = weather
        self.temperature = temperature


def get_current_weather() -> Dict[str, any]:
    lat = 53.33947559137039
    lon = -6.248868208190408
    weather_response = requests.get(OpenWeatherAPI_URL.format(lat, lon, OpenWeatherAPI_KEY))
    time.sleep(1)
    weather = weather_response.json()['weather'][0]['main']
    temperature = weather_response.json()['main']['temp']
    current_weather = {"weather": weather, "temperature": temperature}

    return current_weather


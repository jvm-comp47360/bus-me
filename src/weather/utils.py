from typing import Dict
import requests
import schedule
import time
from decouple import config

OpenWeatherAPI_KEY = config("WEATHER_API_KEY")
OpenWeatherAPI_URL = "https://api.openweathermap.org/data/2.5/weather?lat={}&lon={}&appid={}"


class Weather:
    def __init__(self):
        self.current_weather = self.pull_current_weather_from_api()

    def pull_current_weather_from_api(self) -> Dict[str, any]:
        print("*** Getting data from API ***")
        lat = 53.33947559137039
        lon = -6.248868208190408
        weather_response = requests.get(OpenWeatherAPI_URL.format(lat, lon, OpenWeatherAPI_KEY))
        time.sleep(1)
        icon = weather_response.json()['weather'][0]['icon']
        weather = weather_response.json()['weather'][0]['main']
        temperature = weather_response.json()['main']['temp']
        current_weather = {"icon": icon, "weather": weather, "temperature": temperature}

        return current_weather

    def set_current_weather(self: Weather) -> void:
        self.current_weather = self.get_current_weather()

    def update_current_weather(self: Weather) -> void:
        print("*** Updating the weather ***")
        schedule.every(1).minute.do(self.get_current_weather)

    def get_current_weather(self: Weather) -> void:
        return self.current_weather


current_weather = Weather()
current_weather.update_current_weather()















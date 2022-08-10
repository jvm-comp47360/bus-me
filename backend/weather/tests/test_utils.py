from django.test import TestCase
from ..utils import *


class TestWeatherFunctions(TestCase):
    """Tests API if user requests all bus stops"""
    mock_current_weather = {"coord": {"lon": -6.24, "lat": 53.33},
                       "weather": [{"id": 802, "main": "Clouds", "description": "scattered clouds", "icon": "03d"}],
                       "base": "stations",
                       "main": {"temp": 287.66, "feels_like": 286.86, "temp_min": 287.52, "temp_max": 288.02,
                                "pressure": 1020, "humidity": 65}, "visibility": 10000,
                       "wind": {"speed": 8.23, "deg": 10}, "clouds": {"all": 40}, "dt": 1655667351,
                       "sys": {"type": 2, "id": 2016139, "country": "IE", "sunrise": 1655610985, "sunset": 1655672169},
                       "timezone": 3600, "id": 2961816, "name": "Ringsend", "cod": 200}

    def test_get_weather(self):
        icon = self.mock_current_weather['weather'][0]['icon']
        weather = get_weather(icon, self.mock_current_weather)
        self.assertEqual(weather, 'Partial Clouds')

    def test_get_temperature(self):
        weather_response = self.mock_current_weather['main']['temp']
        temperature = get_current_temperature(weather_response)
        self.assertEqual(temperature, '14.51')

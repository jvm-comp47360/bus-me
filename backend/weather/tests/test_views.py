# from django.test import TestCase, Client
# from unittest.mock import patch, Mock
# from ..views import WeatherAPIView
#
#
# class GetAllBusStopsTest(TestCase):
#     """Tests API if user requests all bus stops"""
#
#     client = Client()
#
#     def test_get_current_weather(self):
#         mock_get_patcher = patch('requests.get')
#         current_weather = {"coord": {"lon":-6.24,"lat":53.33},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"base":"stations","main":{"temp":287.66,"feels_like":286.86,"temp_min":287.52,"temp_max":288.02,"pressure":1020,"humidity":65},"visibility":10000,"wind":{"speed":8.23,"deg":10},"clouds":{"all":40},"dt":1655667351,"sys":{"type":2,"id":2016139,"country":"IE","sunrise":1655610985,"sunset":1655672169},"timezone":3600,"id":2961816,"name":"Ringsend","cod":200}
#
#         mock_get = mock_get_patcher.start()
#         mock_get.return_value = Mock(status_code=200)
#         mock_get.return_value.json.return_value = current_weather
#
#         response = WeatherAPIView.get()
#
#         mock_get_patcher.stop()
#
#         self.assertEqual(response.status_code, 200)
#         self.assertEqual(response.json(), current_weather)

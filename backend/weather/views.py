from rest_framework.response import Response
from rest_framework.views import APIView

from .serializers import WeatherSerializer
from .utils import pull_current_weather_from_api


class WeatherAPIView(APIView):
    def get(self, request):
        serializer = WeatherSerializer(data=pull_current_weather_from_api())

        serializer.is_valid(True)
        return Response(serializer.data)

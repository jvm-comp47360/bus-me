from rest_framework.response import Response
from rest_framework.views import APIView

from .serializers import WeatherSerializer
from .utils import current_weather


class WeatherAPIView(APIView):
    def get(self, request):
        serializer = WeatherSerializer(data=current_weather.get_current_weather())

        serializer.is_valid(True)
        return Response(serializer.data)

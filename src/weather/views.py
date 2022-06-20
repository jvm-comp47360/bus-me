from rest_framework.response import Response
from rest_framework.views import APIView

from .serializers import WeatherSerializer
from .utils import get_current_weather


class WeatherAPIView(APIView):
    serializer_class = WeatherSerializer

    def get(self, request):
        current_weather = get_current_weather()
        serializer = WeatherSerializer(data=current_weather)

        serializer.is_valid(True)
        return Response(serializer.data)

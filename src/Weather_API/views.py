from .models import Weather
from .serializers import WeatherSerializer
from rest_framework.views import APIView
from rest_framework.response import Response

class WeatherAPIView(APIView):
    serializer_class = WeatherSerializer

    def get(self,request):
        current_weather = Weather.objects.all()
        serializer = WeatherSerializer(current_weather,many=True)

        return Response(serializer.data)
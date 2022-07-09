from .models import BusRoutes
from .serializers import BusRoutesSerializer
from .models import BusStops
from .serializers import BusStopsSerializer
from rest_framework.views import APIView
from rest_framework.response import Response


class BusRoutesAPIView(APIView):
    serializer_class = BusRoutesSerializer

    def get(self, request):
        bus_routes = BusRoutes.objects.all()
        serializer = BusRoutesSerializer(bus_routes, many=True)

        return Response(serializer.data)


class BusStopsAPIView(APIView):
    serializer_class = BusStopsSerializer

    def get(self, request):
        bus_stops = BusStops.objects.all()
        serializer = BusStopsSerializer(bus_stops, many=True)

        return Response(serializer.data)
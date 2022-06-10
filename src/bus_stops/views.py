from django.shortcuts import render
from .models import BusStops
from .serializers import BusStopsSerializer
from rest_framework.views import APIView
from rest_framework.response import Response


class BusStopsAPIView(APIView):
    serializer_class = BusStopsSerializer

    def get(self):
        bus_stops = BusStops.objects.all()
        serializer = BusStopsSerializer(bus_stops, many=True)

        return Response(serializer.data)

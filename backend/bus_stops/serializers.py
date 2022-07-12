from rest_framework import serializers
from .models import BusStops, BusRoutes, RouteConnections


class RouteConnectionsSerializer(serializers.ModelSerializer):
    class Meta:
        model = RouteConnections
        fields = ('bus_route_id', 'bus_stop_id')


class BusStopsSerializer(serializers.ModelSerializer):
    class Meta:
        model = BusStops
        fields = ('id', 'name', 'number', 'latitude', 'longitude')


class BusRoutesSerializer(serializers.ModelSerializer):
    bus_stops = BusStopsSerializer(many=True)

    class Meta:
        model = BusRoutes
        fields = ('id', 'name', 'bus_stops')

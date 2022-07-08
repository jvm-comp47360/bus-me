from django.db import models


class BusStops(models.Model):
    """Model that represents information relating to individual bus stops"""
    class Meta:
        db_table = "bus_stops"

    id = models.CharField(primary_key=True, max_length=50)
    name = models.CharField(max_length=50)
    number = models.IntegerField()
    latitude = models.DecimalField(max_digits=19, decimal_places=10)
    longitude = models.DecimalField(max_digits=19, decimal_places=10)
    bus_routes = models.ManyToManyField('bus_stops.BusRoutes', through="RouteConnections")

    def __str__(self):
        return f"{self.name}, Stop No.{self.number}"


class BusRoutes(models.Model):
    class Meta:
        db_table = "bus_routes"

    id = models.CharField(primary_key=True, max_length=50)
    name = models.CharField(max_length=50)
    bus_stops = models.ManyToManyField('bus_stops.BusStops', through="RouteConnections")


class RouteConnections(models.Model):
    class Meta:
        db_table = "route_connections"

    bus_stop = models.ForeignKey('bus_stops.BusStops', on_delete=models.CASCADE)
    bus_route = models.ForeignKey('bus_stops.BusRoutes', on_delete=models.CASCADE)


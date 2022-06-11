from django.db import models


class BusStops(models.Model):
    id = models.CharField(primary_key=True, max_length=20)
    name = models.CharField(max_length=20)
    number = models.IntegerField()
    latitude = models.DecimalField(max_digits=30, decimal_places=30)
    longitude = models.DecimalField(max_digits=30, decimal_places=30)


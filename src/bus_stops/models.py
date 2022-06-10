from django.db import models


class BusStops(models.Model):
    class Meta:
        db_table = 'stops'

    name = models.TextField()
    number = models.IntegerField()
    latitude = models.DecimalField(max_digits=30, decimal_places=30)
    longitude = models.DecimalField(max_digits=30, decimal_places=30)


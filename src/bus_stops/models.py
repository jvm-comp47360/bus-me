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
    lines = models.TextField(max_length=200)

    def __str__(self):
        return f"{self.name}, Stop No.{self.number}"

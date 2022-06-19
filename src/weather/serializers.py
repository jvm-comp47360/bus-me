from dataclasses import field
from rest_framework import serializers


class WeatherSerializer(serializers.Serializer):  # noqa
    weather = serializers.CharField(max_length=200)
    temperature = serializers.DecimalField(max_digits=19, decimal_places=10)

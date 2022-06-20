from dataclasses import field
from this import s
from unittest.util import _MAX_LENGTH
from rest_framework import serializers


class WeatherSerializer(serializers.Serializer):  # noqa
    icon = serializers.CharField(max_length=10)
    weather = serializers.CharField(max_length=200)
    temperature = serializers.DecimalField(max_digits=19, decimal_places=10)

from dataclasses import field
from rest_framework import serializers


class WeatherSerializer(serializers.Serializer):  
    icon = serializers.CharField(max_length=10)
    date = serializers.CharField(max_length=10)
    weatherText = serializers.CharField(max_length=200)
    temperature = serializers.DecimalField(max_digits=19, decimal_places=10)
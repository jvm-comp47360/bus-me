from dataclasses import field
from rest_framework import serializers


class PredictionSerializer(serializers.Serializer):  
    prediction = serializers.DecimalField(max_digits=10, decimal_places=5)
from django.db import models

class Weather(models.Model):
    class Meta:
        # OpenWeather API current weather
        db_table = "current_weather"
    id = models.CharField(primary_key=True,max_length=50)
    weather = models.CharField(max_length=50)
    temperature = models.CharField(max_length=10)
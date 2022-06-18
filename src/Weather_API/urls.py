from django.urls import path
from . import views

urlpatterns = [
    path('current_weather/', views.WeatherAPIView.as_view()),
]
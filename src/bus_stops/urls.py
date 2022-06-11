from django.urls import path
from . import views

urlpatterns = [
    path('bus_stops/', views.BusStopsAPIView.as_view()),
]

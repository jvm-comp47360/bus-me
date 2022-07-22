from django.urls import path
from . import views

urlpatterns = [
    path('bus_routes/', views.BusRoutesAPIView.as_view()),
    path('bus_stops/', views.BusStopsAPIView.as_view()),
]

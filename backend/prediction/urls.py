from django.urls import path
from . import views

urlpatterns = [
    path('prediction/<str:route>/<str:num_stops_segment>/<str:time>', views.PredictionAPIView.as_view()),
]
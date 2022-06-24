from django.urls import path
from . import views

urlpatterns = [
    path('prediction/', views.PredictionAPIView.as_view()),
]
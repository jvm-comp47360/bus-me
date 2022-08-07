from rest_framework import status
from django.test import TestCase, Client
from ..serializers import PredictionSerializer


class GetPredictionTest(TestCase):
    """Tests API if user requests all bus stops"""
    client = Client()

    def test_get_random_forest_prediction_today(self):
        """It should retrieve the correct prediction for random forest model current date"""
        response = self.client.get("/api/prediction/39/25/3000")
        serializer = PredictionSerializer({"prediction": 47.21000})
        self.assertEqual(response.data, serializer.data)
        self.assertEqual(response.status_code, status.HTTP_200_OK)

    def test_get_random_forest_prediction_tomorrow(self):
        """It should retrieve the correct prediction for random forest model tomorrow date"""
        response = self.client.get("/api/prediction/39/25/86500")
        serializer = PredictionSerializer({"prediction": 24.43000})
        self.assertEqual(response.data, serializer.data)
        self.assertEqual(response.status_code, status.HTTP_200_OK)

    def test_get_linear_regression_prediction_today(self):
        """It should retrieve the correct prediction for linear regression model current date"""
        response = self.client.get("/api/prediction/33E/25/3000")
        serializer = PredictionSerializer({"prediction": 24.58000})
        self.assertEqual(response.data, serializer.data)
        self.assertEqual(response.status_code, status.HTTP_200_OK)

    def test_get_linear_regression_prediction_tomorrow(self):
        """It should retrieve the correct prediction for linear regression model tomorrow date"""
        response = self.client.get("/api/prediction/33E/25/86500")
        serializer = PredictionSerializer({"prediction": 24.58000})
        self.assertEqual(response.data, serializer.data)
        self.assertEqual(response.status_code, status.HTTP_200_OK)

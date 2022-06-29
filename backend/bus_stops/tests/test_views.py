from rest_framework import status
from django.test import TestCase, Client
from ..models import BusStops
from ..serializers import BusStopsSerializer


class GetAllBusStopsTest(TestCase):
    """Tests API if user requests all bus stops"""

    client = Client()

    def setUp(self):
        """Create three objects in the mock database"""
        BusStops.objects.create(
            id="8220DB000012",
            name="Upper Dorset Street",
            number="12",
            latitude="53.3571075162046",
            longitude="-6.26438186733525"
        )

        BusStops.objects.create(
            id="8220DB000056",
            name="Dalymount",
            number="56",
            latitude="53.3607597246064",
            longitude="-6.27637365491405"
        )

        BusStops.objects.create(
            id="8220DB000157",
            name="Glasilawn Road",
            number="157",
            latitude="53.3804116224189",
            longitude="-6.28163782517761"
        )

    def test_get_all_bus_stops(self):
        """Try and retrieve all bus stops from mock database"""
        response = self.client.get("/api/bus_stops/")
        bus_stops = BusStops.objects.all()
        serializer = BusStopsSerializer(bus_stops, many=True)
        self.assertEqual(response.data, serializer.data)
        self.assertEqual(response.status_code, status.HTTP_200_OK)

# from rest_framework import status
# from django.test import TestCase, Client
# from bus_stops.models import BusStops, BusRoutes, RouteConnections
# from ..serializers import BusStopsSerializer
#
#
# class GetAllBusStopsTest(TestCase):
#     """Tests API if user requests all bus stops"""
#
#     client = Client()
#
#     def setUp(self):
#         stop1, stop2, stop3 = self.create_dummy_bus_stops()
#         route1, route2 = self.create_dummy_bus_routes()
#         self.create_dummy_route_connections(stop1, stop2, stop3, route1, route2)
#
#     @staticmethod
#     def create_dummy_bus_stops() -> tuple[BusStops, BusStops, BusStops]:
#         """Create three dummy bus stops in the mock database"""
#         stop1 = BusStops.objects.create(
#             id="8220DB000012",
#             name="Upper Dorset Street",
#             number="12",
#             latitude="53.3571075162046",
#             longitude="-6.26438186733525"
#         )
#         stop2 = BusStops.objects.create(
#             id="8220DB000056",
#             name="Dalymount",
#             number="56",
#             latitude="53.3607597246064",
#             longitude="-6.27637365491405"
#         )
#         stop3 = BusStops.objects.create(
#             id="8220DB000157",
#             name="Glasilawn Road",
#             number="157",
#             latitude="53.3804116224189",
#             longitude="-6.28163782517761"
#         )
#         return stop1, stop2, stop3
#
#     @staticmethod
#     def create_dummy_bus_routes() -> tuple[BusRoutes, BusRoutes]:
#         """Create two dummy routes in the mock database"""
#         route1: BusRoutes = BusRoutes.objects.create(
#             id="0",
#             name="Route 1",
#         )
#         route2: BusRoutes = BusRoutes.objects.create(
#             id="1",
#             name="Route 2",
#         )
#         return route1, route2
#
#     @staticmethod
#     def create_dummy_route_connections(stop1: BusStops,
#                                        stop2: BusStops,
#                                        stop3: BusStops,
#                                        route1: BusRoutes,
#                                        route2: BusRoutes) -> None:
#         """Create two dummy route connections in the mock database"""
#         RouteConnections.objects.create(
#             bus_stop=stop1,
#             bus_route=route1,
#         )
#
#         RouteConnections.objects.create(
#             bus_stop=stop2,
#             bus_route=route1,
#         )
#
#         RouteConnections.objects.create(
#             bus_stop=stop3,
#             bus_route=route2,
#         )
#
#     def test_get_all_bus_stops(self):
#         """Try and retrieve all bus stops from mock database"""
#         response = self.client.get("/api/bus_stops/")
#         bus_stops = BusStops.objects.all()
#         serializer = BusStopsSerializer(bus_stops, many=True)
#         self.assertEqual(response.data, serializer.data)
#         self.assertEqual(response.status_code, status.HTTP_200_OK)

from .models import BusRoutes
from .serializers import BusRoutesSerializer
from rest_framework.views import APIView
from rest_framework.response import Response


class BusStopsAPIView(APIView):
    serializer_class = BusRoutesSerializer

    def get(self, request):
        bus_routes = BusRoutes.objects.all()
        serializer = BusRoutesSerializer(bus_routes, many=True)

        return Response(serializer.data)

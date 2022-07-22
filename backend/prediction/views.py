from rest_framework.response import Response
from rest_framework.views import APIView

from .serializers import PredictionSerializer
from .utils import get_prediction


class PredictionAPIView(APIView):
    serializer_class = PredictionSerializer

    def get(self, request, route, num_stops_segment, time):
        # print(request)
        # route = request.GET['route']
        # num_stops_segment = request.GET['num_stops_segment']
        # time = request.get['time']

        prediction = get_prediction(route, num_stops_segment, time)
        serializer = PredictionSerializer(data=prediction)

        serializer.is_valid(True)
        return Response(serializer.data)

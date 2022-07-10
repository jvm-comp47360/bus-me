from rest_framework.response import Response
from rest_framework.views import APIView

from .serializers import PredictionSerializer
from .utils import get_prediction


class PredictionAPIView(APIView):
    serializer_class = PredictionSerializer

    def post(self, request):
        route = request.data.get('route')
        start_coords = request.data.get('start_coords')
        finish_coords = request.data.get('finish_coords')
        time = request.data.get('time')

        prediction = get_prediction(route, start_coords, finish_coords, time)
        serializer = PredictionSerializer(data=prediction)

        serializer.is_valid(True)
        return Response(serializer.data)

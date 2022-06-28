from rest_framework.response import Response
from rest_framework.views import APIView

from .serializers import PredictionSerializer
from .utils import get_prediction


class PredictionAPIView(APIView):
    serializer_class = PredictionSerializer

    def post(self, request):
        start_stop = request.data.get('start_stop')
        finish_stop = request.data.get('finish_stop')
        time = request.data.get('time')

        prediction = get_prediction(start_stop, finish_stop, time)
        serializer = PredictionSerializer(data=prediction)

        serializer.is_valid(True)
        return Response(serializer.data)

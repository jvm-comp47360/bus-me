from typing import Dict

class Prediction:
    def __init__(self, prediction):
        self.prediction = prediction


def get_prediction() -> Dict[str, any]:
    prediction = '5'
    prediction_result = {"prediction": prediction}

    return prediction_result
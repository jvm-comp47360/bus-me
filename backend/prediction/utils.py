from typing import Dict


class Prediction:
    def __init__(self, prediction):
        self.prediction = prediction


def get_prediction(start_stop: str, finish_stop: str, time: str) -> Dict[str, any]:
    prediction = '5'
    return {"prediction": prediction}
import {Button} from '@mui/material';
import {Dispatch, SetStateAction, useState} from "react";
import GraphDialog from "./GraphDialog/GraphDialog";
import BusStop from "../../../../../types/BusStop";
import BusRoute from "../../../../../types/BusRoute";
import LoadScreen from "../../../Map/LoadScreen/LoadScreen";

type DirectionsResult = google.maps.DirectionsResult;

interface Props {
  routeSelection: BusRoute | undefined,
  startSelection: BusStop,
  finishSelection: BusStop,
  prediction: number,
  predictionList: number[],
  setPredictionList: Dispatch<SetStateAction<number[]>>,
  directions: google.maps.DirectionsResult | null,
  dateTimeSelection: Date,
}

type Prediction = {
  prediction: number;
}

const stationPickles = ['1', '4', '7', '7A', '7B', '7D',
  '9', '11', '13', '14', '15', '15A', '15B', '15D', '16',
  '16D', '26', '27', '27A', '27B', '27X', '32X', '33',
  '33D', '33E', '33X', '37', '38', '38A', '38B', '38D',
  '39', '39A', '39X', '40', '40B', '40D', '40E', '41',
  '41B', '41C', '41D', '41X', '42', '43', '44',
  '46A', '46E', '47', '49', '51D', '53', '54A', '56A',
  '61', '65', '65B', '68', '68A', '69', '69X', '70',
  '77A', '77X', '79', '79A', '83', '83A', '84', '84A',
  '84X', '116', '118', '120', '122', '123', '130',
  '140', '142', '145', '150', '151'];

const GraphDialogButton = ({
                        routeSelection,
                        startSelection,
                        finishSelection,
                        prediction,
                        predictionList,
                        setPredictionList,
                        directions,
                        dateTimeSelection,
                      }: Props): JSX.Element => {
  const [graphIsOpen, setGraphIsOpen] = useState<boolean>(false);

  const getSeconds = (date: Date) => {
    const minutes = date.getMinutes();
    const hours = date.getHours();
    return ((60 * hours) + minutes) * 60;
  }

  const getNumStopsSegment = (routeSelection: BusRoute, startSelection: BusStop, finishSelection: BusStop): number => {
    const start_stop_number = routeSelection.bus_stops.indexOf(startSelection)
    const finish_stop_number = routeSelection.bus_stops.indexOf(finishSelection)
    return Math.abs(finish_stop_number - start_stop_number);
  }

  const getPredictionsAndOpenGraph = () => {
    console.log(prediction)
    // If user has not asked to recalculate journey, just open the cached results
    // and don't make another API call.
    if (predictionList.length !== 0) {
      setGraphIsOpen(true);
    } else {
      // If route selection is empty, then multiroute is on.
      if (!routeSelection) {

        // Null check for directions.
        if (!directions) {
          return;
        }


        const journeyStages: google.maps.DirectionsStep[] | null = directions.routes[0].legs[0].steps;
        const urlsToFetch: string[] = [];
        let googleMapsPrediction = 0;

        journeyStages.map((journeyStage) => {
          if (journeyStage.travel_mode === 'TRANSIT') {
            const transitDetails: google.maps.TransitDetails | undefined = journeyStage.transit;

            // Scenario where we call the API from the backend.
            if (transitDetails && stationPickles.indexOf(transitDetails.line.short_name) !== -1) {
              const route: string = transitDetails.line.short_name;
              const num_stop_segments: number = transitDetails.num_stops
              const time: number = getSeconds(dateTimeSelection)

              const timeModifiers = [-7200, -3600, 3600, 7200]
              timeModifiers.map((timeModifier) => {
                if (time + timeModifier > 86400) {
                  urlsToFetch.push(`http://ipa-002.ucd.ie/api/prediction/${route}/${num_stop_segments}/${(time + timeModifier - 86400).toString()}`)
                } else if (time + timeModifier < 0) {
                  urlsToFetch.push(`http://ipa-002.ucd.ie/api/prediction/${route}/${num_stop_segments}/${(time + timeModifier + 86400).toString()}`)
                } else {
                  urlsToFetch.push(`http://ipa-002.ucd.ie/api/prediction/${route}/${num_stop_segments}/${(time + timeModifier).toString()}`)
                }
              })
            //  Scenario where we just get the Google Maps API
            } else {
              const predictionInSeconds: google.maps.Duration | undefined = journeyStage.duration;
              if (predictionInSeconds) {
                const predictionInMinutes: number = Math.round((predictionInSeconds.value / 60 * 10) / 10)
                console.log("Prediction in minutes:");
                googleMapsPrediction += predictionInMinutes;
              }
            }
          }
        })

        Promise.all(urlsToFetch.map((url) => fetch(url)))
          .then((responses) =>
            responses.map((response) => response.json() as Promise<Prediction>))
          .then((predictions) => {
            Promise.all(predictions).then((predictions) => {
              console.log(predictions)
              const numberOfLegs: number = predictions.length / 4;
              const totalPredictionList: number[] = [];

              for (let i = 0; i < 4; i++) {
                let currentTotalPredictions = 0;
                for (let j = 0; j < numberOfLegs; j++) {
                  const currentTotalPrediction = predictions[i + (j * 4)].prediction;
                  currentTotalPredictions += Math.round((currentTotalPrediction * 10) / 10);
                }
                if (googleMapsPrediction > 0) {
                  currentTotalPredictions += googleMapsPrediction;
                }
                totalPredictionList.push(currentTotalPredictions);
              }
              setPredictionList(totalPredictionList);
              setGraphIsOpen(true);
            })
          })
      }
      else if (stationPickles.indexOf(routeSelection.name) === -1) {
        setPredictionList([prediction, prediction, prediction, prediction, prediction]);
        setGraphIsOpen(true);
      } else {
        const num_stops_segment = getNumStopsSegment(routeSelection, startSelection, finishSelection);
        const time: number = getSeconds(dateTimeSelection);
        const urlsToFetch: string[] = [];

        const timeModifiers = [-7200, -3600, 3600, 7200]
        timeModifiers.map((timeModifier) => {
          if (time + timeModifier > 86400) {
            urlsToFetch.push(`http://ipa-002.ucd.ie/api/prediction/${routeSelection.name}/${num_stops_segment}/${(time + timeModifier - 86400).toString()}`)
          } else if (time + timeModifier < 0) {
            urlsToFetch.push(`http://ipa-002.ucd.ie/api/prediction/${routeSelection.name}/${num_stops_segment}/${(time + timeModifier + 86400).toString()}`)
          } else {
            urlsToFetch.push(`http://ipa-002.ucd.ie/api/prediction/${routeSelection.name}/${num_stops_segment}/${(time + timeModifier).toString()}`)
          }
        })

        Promise.all(urlsToFetch.map((url) => fetch(url)))
          .then((responses) =>
            responses.map((response) => response.json() as Promise<Prediction>))
          .then((predictions) => {
            Promise.all(predictions).then((predictions) => {
              setPredictionList([
                Math.round(predictions[0].prediction),
                Math.round(predictions[1].prediction),
                Math.round(predictions[2].prediction),
                Math.round(predictions[3].prediction),
              ])
              setGraphIsOpen(true);
            })
          })
      }
    }
  }

  return <>
    <Button
      variant={"contained"}
      onClick={() => getPredictionsAndOpenGraph()}
    >
      Journey Times
    </Button>
    <GraphDialog
      graphIsOpen={graphIsOpen}
      setGraphIsOpen={setGraphIsOpen}
      prediction={prediction}
      graphPredictions={predictionList}
      startSelection={startSelection}
      finishSelection={finishSelection}
    />
  </>;
};

export default GraphDialogButton;

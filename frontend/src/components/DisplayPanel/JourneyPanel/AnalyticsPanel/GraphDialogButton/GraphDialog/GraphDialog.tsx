import React from "react";
import {Button, Dialog, DialogTitle, Slide} from '@mui/material';
import Highcharts from 'highcharts';
import HighchartsReact from 'highcharts-react-official';
import {Dispatch, SetStateAction} from "react";
import BusStop from "../../../../../../types/BusStop";

interface Props {
  graphIsOpen: boolean,
  setGraphIsOpen: Dispatch<SetStateAction<boolean>>;
  prediction: number | undefined,
  graphPredictions: number[] | undefined,
  startSelection: BusStop | undefined,
  finishSelection: BusStop | undefined,
}

const GraphDialog = ({
                        graphIsOpen,
                        setGraphIsOpen,
                        prediction,
                        graphPredictions,
                        startSelection,
                        finishSelection,
                      }: Props): JSX.Element => {

  const getAllPredictions = (prediction: number | undefined, graphPredictions: number[] | undefined): number[] => {
    if (!prediction || !graphPredictions) {
      return []
    } else {
      return [graphPredictions[0], graphPredictions[1], prediction, graphPredictions[2], graphPredictions[3]];
    }
  }

  const closeGraph = () => {
    setGraphIsOpen(false);
  }

  const chartOptions = {
    title: {
      text: ''
    },
    xAxis: {
      categories: ['-2', '-1', '0', '+1', '+2'],
      labels: {
        rotation: 0,
        align: 'right'
      },
      title: {
        text: 'Hours'
      }
    },
    yAxis: {
      title: {
        text: 'Minutes'
      }
    },
    series: [{
      name: 'Minutes',
      data: getAllPredictions(prediction, graphPredictions)
    }],
    plotOptions: {
      series: {
        events: {
          legendItemClick: (e: any) => {
            e.preventDefault();
          }
        }
      }
    }
  }

  return <>
    <Dialog
      fullWidth
      maxWidth={'sm'}
      open={graphIsOpen}
    >
        <DialogTitle sx={{color: 'white'}}>
          {(startSelection && finishSelection) ?
            `Journey Durations (${startSelection.name} to ${finishSelection.name})`
            : ''}
        </DialogTitle>
        <HighchartsReact
          highcharts={Highcharts}
          options={chartOptions}
        />
      <Button
        onClick={closeGraph}
      >
        Back to Map
      </Button>
    </Dialog>
  </>;
};

export default GraphDialog;

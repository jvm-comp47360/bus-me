import React from "react";
import {Button, Dialog, DialogTitle, Slide} from '@mui/material';
import Highcharts from 'highcharts';
import HighchartsReact from 'highcharts-react-official';
import {Dispatch, SetStateAction} from "react";

interface Props {
  graphIsOpen: boolean,
  setGraphIsOpen: Dispatch<SetStateAction<boolean>>;
  prediction: number | undefined,
  graphPredictions: number[] | undefined,
}

const GraphDialog = ({
                        graphIsOpen,
                        setGraphIsOpen,
                        prediction,
                        graphPredictions
                      }: Props): JSX.Element => {

  const getAllPredictions = (prediction: number | undefined, graphPredictions: number[] | undefined): number[] => {
    if (!prediction || !graphPredictions) {
      return []
    } else {
      return [prediction, ...graphPredictions];
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
      categories: ['Now', '+1 hour', '+2 hours', '+3 hours', '+4 hours'],
      labels: {
        rotation: -90,
        align: 'right'
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
    }]
  }

  return <>
    <Dialog
      fullWidth
      maxWidth={'sm'}
      open={graphIsOpen}
    >
        <DialogTitle sx={{color: 'white'}}>
          Journey Durations
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

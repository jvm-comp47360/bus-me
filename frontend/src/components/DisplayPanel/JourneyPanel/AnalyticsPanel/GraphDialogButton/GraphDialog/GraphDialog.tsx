import React from 'react';
import {Button, Dialog, DialogTitle} from '@mui/material';
import Highcharts from 'highcharts';
import HighchartsReact from 'highcharts-react-official';
import {Dispatch, SetStateAction} from 'react';
import BusStop from '../../../../../../types/BusStop';

interface Props {
  graphIsOpen: boolean,
  setGraphIsOpen: Dispatch<SetStateAction<boolean>>;
  prediction: number | undefined,
  graphPredictions: number[] | undefined,
  startSelection: BusStop | undefined,
  finishSelection: BusStop | undefined,
  dateTimeSelection: Date,
}

const GraphDialog = ({
  graphIsOpen,
  setGraphIsOpen,
  prediction,
  graphPredictions,
  startSelection,
  finishSelection,
  dateTimeSelection,
}: Props): JSX.Element => {
  const getAllPredictions = (prediction: number | undefined,
      graphPredictions: number[] | undefined): number[] => {
    // Split predictions from array in the correct format.
    if (!prediction || !graphPredictions) {
      return [];
    } else {
      return [graphPredictions[0], graphPredictions[1],
        prediction, graphPredictions[2], graphPredictions[3]];
    }
  };

  const getTwoDigitFormat = (time: number) => {
    // Source:
    // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/padStart
    return String(time).padStart(2, '0');
  };

  const getModifiedHours = (hour: number) => {
    // Get offset if hours are not in correct range
    if (hour >= 24) {
      return hour - 24;
    } else if (hour < 0) {
      return hour + 24;
    } else {
      return hour;
    }
  };

  const getAllTimes = (dateTimeSelection: Date) => {
    // Get correct times depending on user selection
    const currentHours = dateTimeSelection.getHours();
    const currentMinutes = dateTimeSelection.getMinutes();
    const timeModifiers = [-2, -1, 0, 1, 2];

    return timeModifiers.map((timeModifier) => {
      const modifiedHours = getModifiedHours(currentHours + timeModifier);

      const twoDigitHours = getTwoDigitFormat(modifiedHours);
      const twoDigitMinutes = getTwoDigitFormat(currentMinutes);

      return `${twoDigitHours}:${twoDigitMinutes}`;
    });
  };

  const closeGraph = () => {
    setGraphIsOpen(false);
  };

  // Disabling legend clicking: https://www.highcharts.com/forum/viewtopic.php?t=37129
  const chartOptions = {
    title: {
      text: '',
    },
    xAxis: {
      categories: getAllTimes(dateTimeSelection),
      labels: {
        rotation: 0,
        align: 'right',
      },
    },
    yAxis: {
      title: {
        text: 'Minutes',
      },
    },
    series: [{
      name: 'Minutes',
      data: getAllPredictions(prediction, graphPredictions),
    }],
    plotOptions: {
      series: {
        events: {
          legendItemClick: (e: any) => {
            e.preventDefault();
          },
        },
      },
    },
  };

  return <>
    <Dialog
      fullWidth
      maxWidth={'sm'}
      open={graphIsOpen}
    >
      <DialogTitle sx={{color: 'white'}}>
        {(startSelection && finishSelection) ?
          // eslint-disable-next-line max-len
            `Journey Durations (${startSelection.name} to ${finishSelection.name})` :
            ''}
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

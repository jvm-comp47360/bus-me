import {Button} from '@mui/material';
import {useState} from "react";
import GraphDialog from "./GraphDialog/GraphDialog";
import BusStop from "../../../../../types/BusStop";

interface Props {
  startSelection: BusStop | undefined,
  finishSelection: BusStop | undefined,
  prediction: number | undefined,
  graphPredictions: number[] | undefined,
}

const GraphDialogButton = ({
                        startSelection,
                        finishSelection,
                        prediction,
                        graphPredictions
                      }: Props): JSX.Element => {
  const [graphIsOpen, setGraphIsOpen] = useState<boolean>(false);

  const openGraph = () => {
    setGraphIsOpen(true);
  }

  const disableHandler = (): boolean => {
    return !(startSelection &&
      finishSelection &&
      prediction &&
      graphPredictions &&
      graphPredictions.length !== 0);

  }

  return <>
    <Button
      variant={"contained"}
      disabled={disableHandler()}
      onClick={openGraph}
    >
      Journey Times
    </Button>
    <GraphDialog
      graphIsOpen={graphIsOpen}
      setGraphIsOpen={setGraphIsOpen}
      prediction={prediction}
      graphPredictions={graphPredictions}
      startSelection={startSelection}
      finishSelection={finishSelection}
    />
  </>;
};

export default GraphDialogButton;

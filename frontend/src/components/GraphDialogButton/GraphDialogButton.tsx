import {Button} from '@mui/material';
import {Dispatch, SetStateAction} from "react";
import GraphDialog from "./GraphDialog/GraphDialog";

interface Props {
  graphIsOpen: boolean,
  setGraphIsOpen: Dispatch<SetStateAction<boolean>>;
  prediction: number | undefined,
  graphPredictions: number[] | undefined,
}

const GraphDialogButton = ({
                        graphIsOpen,
                        setGraphIsOpen,
                        prediction,
                        graphPredictions
                      }: Props): JSX.Element => {

  const openGraph = () => {
    setGraphIsOpen(true);
  }

  return <>
    <Button
      variant={"contained"}
      onClick={openGraph}
    >
      Journey Times
    </Button>
    <GraphDialog
      graphIsOpen={graphIsOpen}
      setGraphIsOpen={setGraphIsOpen}
      prediction={prediction}
      graphPredictions={graphPredictions}
    />
  </>;
};

export default GraphDialogButton;

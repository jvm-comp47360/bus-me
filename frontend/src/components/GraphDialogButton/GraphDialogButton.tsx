import {Button} from '@mui/material';
import {useState} from "react";
import GraphDialog from "./GraphDialog/GraphDialog";

interface Props {
  prediction: number | undefined,
  graphPredictions: number[] | undefined,
}

const GraphDialogButton = ({
                        prediction,
                        graphPredictions
                      }: Props): JSX.Element => {
  const [graphIsOpen, setGraphIsOpen] = useState<boolean>(false);

  const openGraph = () => {
    setGraphIsOpen(true);
  }

  const disableHandler = (): boolean => {
    return !(prediction && graphPredictions && graphPredictions.length !== 0);

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
    />
  </>;
};

export default GraphDialogButton;

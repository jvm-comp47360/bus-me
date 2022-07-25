import {render, RenderResult, screen} from '@testing-library/react';
import GraphDialog from "./GraphDialog";

// Setup function that renders the main component.
const setup = (prediction: number | undefined,
               graphPredictions: number[] | undefined
  ): RenderResult => render(
    <GraphDialog
      graphIsOpen={true}
      setGraphIsOpen={jest.fn()}
      prediction={prediction}
      graphPredictions={graphPredictions}
    />
  )
;

describe('<GraphDialog/> It should show the UI elements', () => {
  it('should show the title and button',() => {
    expect.assertions(2);
    setup(5, [1, 2, 3]);

    expect(screen.getByText(/journey durations/i)).toBeInTheDocument();
    expect(screen.getByRole('button', {name: /back to map/i})).toBeInTheDocument();
  })
})
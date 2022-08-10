import {render, RenderResult, screen} from '@testing-library/react';
import GraphDialog from './GraphDialog';
import BusRoute from '../../../../../../types/BusRoute';
import MOCK_BUS_ROUTES from '../../../../../../mockdata/MOCK_BUS_ROUTES.json';
import BusStop from '../../../../../../types/BusStop';

const MOCK_CURRENT_ROUTE: BusRoute = MOCK_BUS_ROUTES[0];
const MOCK_START_STATION: BusStop = MOCK_CURRENT_ROUTE['bus_stops'][0];
const MOCK_FINISH_STATION: BusStop = MOCK_CURRENT_ROUTE['bus_stops'][1];

// Setup function that renders the main component.
const setup = (prediction: number | undefined,
    graphPredictions: number[] | undefined,
): RenderResult => render(
    <GraphDialog
      graphIsOpen={true}
      setGraphIsOpen={jest.fn()}
      prediction={prediction}
      graphPredictions={graphPredictions}
      startSelection={MOCK_START_STATION}
      finishSelection={MOCK_FINISH_STATION}
      dateTimeSelection={new Date()}
    />,
)
;

describe('<GraphDialog/> It should show the UI elements', () => {
  it('should show the title and button', () => {
    expect.assertions(2);
    setup(5, [1, 2, 3]);

    expect(screen.getByText(/journey durations/i)).toBeInTheDocument();
    expect(screen.getByRole('button', {name: /back to map/i}))
        .toBeInTheDocument();
  });
});

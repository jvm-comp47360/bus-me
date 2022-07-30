import {render, RenderResult, screen} from '@testing-library/react';
import GraphDialogButton from './GraphDialogButton';
import {UserEvent} from "@testing-library/user-event/dist/types/setup";
import userEvent from "@testing-library/user-event";
import BusRoute from "../../../../../types/BusRoute";
import MOCK_BUS_ROUTES from "../../../../../mockdata/MOCK_BUS_ROUTES.json";
import BusStop from "../../../../../types/BusStop";

const MOCK_CURRENT_ROUTE: BusRoute = MOCK_BUS_ROUTES[0];
const MOCK_START_STATION: BusStop = MOCK_CURRENT_ROUTE['bus_stops'][0];
const MOCK_FINISH_STATION: BusStop = MOCK_CURRENT_ROUTE['bus_stops'][1];

// Setup function that renders the main component.
const setup = (prediction: number,
               graphPredictions: number[]
              ): RenderResult => render(
    <GraphDialogButton
      routeSelection={MOCK_CURRENT_ROUTE}
      startSelection={MOCK_START_STATION}
      finishSelection={MOCK_FINISH_STATION}
      prediction={prediction}
      predictionList={graphPredictions}
      setPredictionList={jest.fn()}
      directions={null}
      dateTimeSelection={new Date()}
    />
  )
;

describe('<GraphPredictionButton/> It should show the button', () => {
  it('should show the button', () => {
    expect.assertions(1);
    setup(5, [1, 2, 3]);

    expect(screen.getByRole('button', {name: /journey times/i})).toBeInTheDocument();
  })
})

describe('<GraphPredictionButton/> It should toggle the graph dialog', () => {
  it('should show the graph dialog when pressed', async () => {
    expect.assertions(2);
    setup(5, [1, 2, 3]);

    const toggleButton: HTMLElement = screen.getByRole('button', {name: /journey times/i});
    const view: UserEvent = userEvent.setup();
    await view.click(toggleButton);

    expect(screen.getByText(/journey durations/i)).toBeInTheDocument();
    expect(screen.getByRole('button', {name: /back to map/i})).toBeInTheDocument();
  })
})
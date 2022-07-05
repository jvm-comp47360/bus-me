import {render, RenderResult, screen} from '@testing-library/react';

import {AdapterDateFns} from '@mui/x-date-pickers/AdapterDateFns';
import {LocalizationProvider} from '@mui/x-date-pickers';

import ControlPanel from './ControlPanel';
import setStartSelection from '../App/App';
import setFinishSelection from '../App/App';
import setRouteSelection from '../App/App';
import setPrediction from '../App/App';

import MOCK_BUS_ROUTES from '../../mockdata/MOCK_BUS_ROUTES.json';

import BusStop from '../../types/BusStop';
import BusRoute from '../../types/BusRoute';

const MOCK_CURRENT_ROUTE: BusRoute = MOCK_BUS_ROUTES[0];
const MOCK_START_STATION: BusStop = MOCK_CURRENT_ROUTE['bus_stops'][0];
const MOCK_FINISH_STATION: BusStop = MOCK_CURRENT_ROUTE['bus_stops'][1];

const setup = (startSelection: BusStop | undefined,
    finishSelection: BusStop | undefined,
    routeSelection: BusRoute | undefined,
): RenderResult => render(
    <LocalizationProvider dateAdapter={AdapterDateFns}>
      <ControlPanel
        startSelection={startSelection}
        setStartSelection={jest.fn()}
        finishSelection={finishSelection}
        setFinishSelection={jest.fn()}
        routeSelection={routeSelection}
        setRouteSelection={jest.fn()}
        setPrediction={jest.fn()}
      />,
    </LocalizationProvider>,
);

describe('<ControlPanel/> Default rendering', () => {
  it('Station dropdowns should appear on the screen', () => {
    expect.assertions(2);
    setup(MOCK_START_STATION, MOCK_FINISH_STATION, MOCK_CURRENT_ROUTE);

    expect(screen.getByRole('combobox', {name: /start/i})).toBeInTheDocument();
    expect(screen.getByRole('combobox', {name: /finish/i})).toBeInTheDocument();
  });

  it('Datetime dropdown should appear on the screen', () => {
    expect.assertions(1);
    setup(MOCK_START_STATION, MOCK_FINISH_STATION, MOCK_CURRENT_ROUTE);

    expect(screen.getByRole('textbox', {name: /choose date/i}))
        .toBeInTheDocument();
  });

  it('submit button should appear on the screen', () => {
    expect.assertions(1);
    setup(MOCK_START_STATION, MOCK_FINISH_STATION, MOCK_CURRENT_ROUTE);

    expect(screen.getByRole('button', {name: /busme!/i})).toBeInTheDocument();
  });
});

describe('<ControlPanel/> Submit button functionality', () => {
  it('should be be disabled by default', () => {
    expect.assertions(1);
    setup(undefined, undefined, undefined);

    expect(screen.getByRole('button', {name: /busme!/i}))
        .toHaveClass('Mui-disabled');
  });

  it('should be be enabled when dropdowns are filled in', () => {
    expect.assertions(1);
    setup(MOCK_START_STATION, MOCK_FINISH_STATION, MOCK_CURRENT_ROUTE);

    expect(screen.getByRole('button', {name: /busme!/i}))
        .not.toHaveClass('Mui-disabled');
  });
});

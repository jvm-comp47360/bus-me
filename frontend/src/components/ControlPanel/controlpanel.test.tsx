import {render, RenderResult, screen} from '@testing-library/react';

import {AdapterDateFns} from '@mui/x-date-pickers/AdapterDateFns';
import {LocalizationProvider} from '@mui/x-date-pickers';
import ControlPanel from './ControlPanel';

import MOCK_BUS_ROUTES from '../../mockdata/MOCK_BUS_ROUTES.json';

import BusStop from '../../types/BusStop';
import BusRoute from '../../types/BusRoute';

import {enableFetchMocks} from 'jest-fetch-mock';

const MOCK_CURRENT_ROUTE: BusRoute = MOCK_BUS_ROUTES[0];
const MOCK_START_STATION: BusStop = MOCK_CURRENT_ROUTE['bus_stops'][0];
const MOCK_FINISH_STATION: BusStop = MOCK_CURRENT_ROUTE['bus_stops'][1];

enableFetchMocks();

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
        setDirections={jest.fn()}
        busRoutes={[]}
        setBusRoutes={jest.fn()}
        busStops={[]}
        multiRoute={false}
        setMultiRoute={jest.fn}
        setPredictionStages={jest.fn}
      />,
    </LocalizationProvider>,
);

describe('<ControlPanel/> Default rendering', () => {
  beforeEach(() => {
    fetchMock.resetMocks();
  });

  it('should show route dropdown', () => {
    // expect.assertions(1);
    setup(undefined, undefined, undefined);
    fetchMock.mockResponseOnce(JSON.stringify(MOCK_BUS_ROUTES));

    expect(screen.getByRole('combobox',
        {name: /select route/i},
    )).toBeInTheDocument();
  });

  it('should show station dropdowns', () => {
    expect.assertions(2);
    setup(MOCK_START_STATION, MOCK_FINISH_STATION, MOCK_CURRENT_ROUTE);
    fetchMock.mockResponseOnce(JSON.stringify(MOCK_BUS_ROUTES));

    expect(screen.getByRole('combobox', {name: /start/i})).toBeInTheDocument();
    expect(screen.getByRole('combobox', {name: /finish/i})).toBeInTheDocument();
  });

  it('should show datetime dropdown', () => {
    expect.assertions(1);
    setup(MOCK_START_STATION, MOCK_FINISH_STATION, MOCK_CURRENT_ROUTE);
    fetchMock.mockResponseOnce(JSON.stringify(MOCK_BUS_ROUTES));

    expect(screen.getByRole('textbox', {name: /choose date/i}))
        .toBeInTheDocument();
  });

  it('should show submit button', () => {
    expect.assertions(1);
    setup(MOCK_START_STATION, MOCK_FINISH_STATION, MOCK_CURRENT_ROUTE);
    fetchMock.mockResponseOnce(JSON.stringify(MOCK_BUS_ROUTES));

    expect(screen.getByRole('button', {name: /plan journey/i}))
        .toBeInTheDocument();
  });

  it('should not show toggle button', () => {
    expect.assertions(1);
    setup(MOCK_START_STATION, MOCK_FINISH_STATION, MOCK_CURRENT_ROUTE);
    fetchMock.mockResponseOnce(JSON.stringify(MOCK_BUS_ROUTES));

    expect(screen.queryByRole('button', {name: /select stations/i}))
        .not.toBeInTheDocument();
  });
});

describe('<ControlPanel/> Submit button functionality', () => {
  it('should be be disabled by default', () => {
    expect.assertions(1);
    setup(MOCK_START_STATION, MOCK_START_STATION, MOCK_CURRENT_ROUTE);
    fetchMock.mockResponseOnce(JSON.stringify(MOCK_BUS_ROUTES));

    expect(screen.getByRole('button', {name: /plan journey/i}))
        .toHaveClass('Mui-disabled');
  });

  it('should be be disabled if two same stations are selected', () => {
    expect.assertions(1);
    setup(undefined, undefined, undefined);
    fetchMock.mockResponseOnce(JSON.stringify(MOCK_BUS_ROUTES));

    expect(screen.getByRole('button', {name: /plan journey/i}))
        .toHaveClass('Mui-disabled');
  });

  it('should be be enabled when dropdowns are filled in', () => {
    expect.assertions(1);
    setup(MOCK_START_STATION, MOCK_FINISH_STATION, MOCK_CURRENT_ROUTE);
    fetchMock.mockResponseOnce(JSON.stringify(MOCK_BUS_ROUTES));


    expect(screen.getByRole('button', {name: /plan journey/i}))
        .not.toHaveClass('Mui-disabled');
  });
});

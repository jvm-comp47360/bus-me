import {render, RenderResult, screen} from '@testing-library/react';

import {AdapterDateFns} from '@mui/x-date-pickers/AdapterDateFns';
import {LocalizationProvider} from '@mui/x-date-pickers';
import ControlPanel from './ControlPanel';

import MOCK_BUS_ROUTES from '../../mockdata/MOCK_BUS_ROUTES.json';

import BusStop from '../../types/BusStop';
import BusRoute from '../../types/BusRoute';
import {UserEvent} from "@testing-library/user-event/dist/types/setup";
import userEvent from "@testing-library/user-event";

import {enableFetchMocks} from 'jest-fetch-mock';
import BUS_ROUTES_API from "../../mockdata/MOCK_BUS_ROUTES.json";

const MOCK_CURRENT_ROUTE: BusRoute = MOCK_BUS_ROUTES[0];
const MOCK_START_STATION: BusStop = MOCK_CURRENT_ROUTE['bus_stops'][0];
const MOCK_FINISH_STATION: BusStop = MOCK_CURRENT_ROUTE['bus_stops'][1];

const BUS_ROUTE_SEARCH: string = BUS_ROUTES_API[0]['name'];
const BUS_ROUTE_GUESS: string = BUS_ROUTES_API[0]['name'].substring(0);

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
      />,
    </LocalizationProvider>,
);

const clickToggleButton = async () => {
  const toggleButton: HTMLElement = screen.getByRole('button', {name: /select stations/i});
  const view: UserEvent = userEvent.setup();
  await view.click(toggleButton);
}

describe('<ControlPanel/> Default rendering', () => {
  beforeEach(() => {
    fetchMock.resetMocks();
  })

  it('should show route dropdown', () => {
    expect.assertions(1);
    setup(MOCK_START_STATION, MOCK_FINISH_STATION, MOCK_CURRENT_ROUTE);
    fetchMock.mockResponseOnce(JSON.stringify(MOCK_BUS_ROUTES));

    expect(screen.getByRole('combobox', {name: /select route/i})).toBeInTheDocument();
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

    expect(screen.getByRole('button', {name: /busme!/i})).toBeInTheDocument();
  });

  it('should not show toggle button', () => {
    expect.assertions(1);
    setup(MOCK_START_STATION, MOCK_FINISH_STATION, MOCK_CURRENT_ROUTE);
    fetchMock.mockResponseOnce(JSON.stringify(MOCK_BUS_ROUTES));

    expect(screen.queryByRole('button', {name: /select stations/i})).not.toBeInTheDocument();
  });
});

  it('should display the show route button', () => {
    expect.assertions(1);
    setup(MOCK_START_STATION, MOCK_FINISH_STATION, MOCK_CURRENT_ROUTE);
    fetchMock.mockResponseOnce(JSON.stringify(MOCK_BUS_ROUTES));

    expect(screen.getByRole('button', {name: /show route!/i})).toBeInTheDocument();
  });

describe('<ControlPanel/> Submit button functionality', () => {
  it('should be be disabled by default', () => {
    expect.assertions(1);
    setup(MOCK_START_STATION, MOCK_START_STATION, MOCK_CURRENT_ROUTE);
    fetchMock.mockResponseOnce(JSON.stringify(MOCK_BUS_ROUTES));

    expect(screen.getByRole('button', {name: /busme!/i}))
        .toHaveClass('Mui-disabled');
  });

  it('should be be disabled if two same stations are selected', () => {
    expect.assertions(1);
    setup(undefined, undefined, undefined);
    fetchMock.mockResponseOnce(JSON.stringify(MOCK_BUS_ROUTES));

    expect(screen.getByRole('button', {name: /busme!/i}))
      .toHaveClass('Mui-disabled');
  });

  it('should be be enabled when dropdowns are filled in', () => {
    expect.assertions(1);
    setup(MOCK_START_STATION, MOCK_FINISH_STATION, MOCK_CURRENT_ROUTE);
    fetchMock.mockResponseOnce(JSON.stringify(MOCK_BUS_ROUTES));


    expect(screen.getByRole('button', {name: /busme!/i}))
        .not.toHaveClass('Mui-disabled');
  });
});

describe('<ControlPanel/> Toggle button functionality',() => {
  it ('should be enabled when dropdown is selected', async () => {
    expect.assertions(1);
    setup(undefined, undefined, undefined);
    fetchMock.mockResponseOnce(JSON.stringify(MOCK_BUS_ROUTES));

    const busRouteDropdown: HTMLInputElement =
      screen.getByRole('combobox', {name: /select route/i});

    const view: UserEvent = userEvent.setup();

    await view.click(busRouteDropdown);
    await view.keyboard(BUS_ROUTE_GUESS);
    await view.keyboard('[ArrowDown]');
    await view.keyboard('[Enter]');

    expect(screen.getByRole('button', {name: /select route/i}))
      .toBeInTheDocument();
  })
});
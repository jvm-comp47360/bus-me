// Mock sample props for the BusStopsDropdown.

import render, {screen} from '@testing-library/react';
import BusRouteDropdown from '../BusRouteDropdown/BusRouteDropdown';
import userEvent from '@testing-library/user-event';
const MOCK_BUS_STOPS = require('../../../mockdata/MOCK_BUS_STOPS.json');
const BUS_ROUTE_SEARCH = MOCK_BUS_STOPS[0]['route'];
const LABEL = 'Select Route';

const setup = () => render(
    <BusRouteDropdown busStops={MOCK_BUS_STOPS}/>,
);

describe('<BusRouteDropdown> Functionality of MUI Autocomplete', () => {
  it('should show the default text', () => {
    expect.assertions(1);
    setup();

    expect(screen.getByLabelText(LABEL)).toBeInTheDocument();
  });

  it('should display valid option after text input', async () => {
    expect.assertions(1);
    setup();

    const busRouteDropdown = screen.getByRole('combobox');

    const view = userEvent.setup();

    await view.click(busRouteDropdown);
    await view.keyboard(BUS_ROUTE_SEARCH);
    await view.keyboard('[ArrowDown]');
    await view.keyboard('[Enter]');

    expect(busRouteDropdown.value).toBe(BUS_ROUTE_SEARCH);
  });
});


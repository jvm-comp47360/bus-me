import userEvent from '@testing-library/user-event';
import {render, screen} from '@testing-library/react';
import BusStopDropdown from './BusStopDropdown';

// Mock sample props for the BusStopsDropdown.
const MOCK_BUS_STOPS = require('../../../mockdata/MOCK_BUS_STOPS.json');
const LABEL = 'Start';
const BUS_STOP_SEARCH = MOCK_BUS_STOPS[0]['name'];
const BUS_STOP_RESULT = `${MOCK_BUS_STOPS[0]['name']}, 
                        Stop No.${MOCK_BUS_STOPS[0]['number']}`;

const setup = () => render(
    <BusStopDropdown busStops={MOCK_BUS_STOPS} label={LABEL}/>,
);

describe('<ControlPanel/> Functionality of Autocomplete MUI components', () => {
  it('should display default text', () => {
    expect.assertions(1);
    setup();

    expect(screen.getByLabelText(LABEL)).toBeInTheDocument();
  });

  it('dropdown should display valid option after user text input', async () => {
    expect.assertions(1);
    setup();

    const startDropdown = screen.getByRole('combobox', {name: /start/i});

    const view = userEvent.setup();

    await view.click(screen.getByRole('combobox', {name: /start/i}));
    await view.keyboard(BUS_STOP_SEARCH);
    await view.keyboard('[ArrowDown]');
    await view.keyboard('[Enter]');

    expect(startDropdown.value).toBe(BUS_STOP_RESULT);
  });
});

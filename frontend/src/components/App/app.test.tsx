import {render, RenderResult, screen} from '@testing-library/react';
import App from './App';
import userEvent from '@testing-library/user-event';

// A mock sample output of the Bus Stops API.
const MOCK_BUS_STOPS = require('../../mockdata/MOCK_BUS_ROUTES.json');
const BUS_STOP_SEARCH: string = MOCK_BUS_STOPS[0]['name'];
const BUS_STOP_RESULT: string = `${MOCK_BUS_STOPS[0]['name']}, ` +
                        `Stop No.${MOCK_BUS_STOPS[0]['number']}`;

// Setup function that renders the main component.
const setup = (): RenderResult => render(<App/>);

describe('<App/> Renders UI components on the screen', () => {
  it('renders control panel on the screen', () => {
    expect.assertions(3);
    setup();
    expect(screen.getByRole('combobox', {name: /start/i})).toBeInTheDocument();
    expect(screen.getByRole('combobox', {name: /finish/i})).toBeInTheDocument();
    expect(screen.getByRole('button', {name: /busme!/i})).toBeInTheDocument();
  });
  it('renders navbar on the screen', () => {
    setup();
    expect(screen.getByAltText('bus-me-logo-nav')).toBeInTheDocument();
  });
  it('renders about section on the screen', () => {
    setup();
    expect(screen.getByText(/about busme/i)).toBeInTheDocument();
  });
});

describe('<App/> BusStops API', () => {
  const simulateDropdown = async (dropdown: HTMLInputElement): Promise<void> => {
    const view = userEvent.setup();

    await view.click(dropdown);
    await view.keyboard(BUS_STOP_SEARCH);
    await view.keyboard('[ArrowDown]');
    await view.keyboard('[Enter]');
  };

  it('successfully passes bus stop data to the dropdowns', async () => {
    expect.assertions(2);
    setup();

    const startDropdown: HTMLInputElement = screen.getByRole('combobox', {name: /start/i});
    await simulateDropdown(startDropdown);
    expect(startDropdown.value).toBe(BUS_STOP_RESULT);

    const finishDropdown: HTMLInputElement = screen.getByRole('combobox', {name: /finish/i});
    await simulateDropdown(finishDropdown);
    expect(finishDropdown.value).toBe(BUS_STOP_RESULT);
  });
});

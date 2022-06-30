import {render, RenderResult, screen} from '@testing-library/react';
import App from './App';

// Mock APIs
import BUS_ROUTES_API from '../../mockdata/MOCK_BUS_ROUTES.json';
// import WEATHER_API from '../../mockdata/MOCK_WEATHER.json';
import userEvent from '@testing-library/user-event';
import {UserEvent} from '@testing-library/user-event/dist/types/setup';
import BusStop from '../../types/BusStop';

const BUS_ROUTE_SEARCH: string = BUS_ROUTES_API[0]['name'];
const BUS_ROUTE_GUESS: string = BUS_ROUTES_API[0]['name'].substring(0);
const WRONG_BUS_ROUTE_SEARCH: string = BUS_ROUTES_API[1]['name'];
const BUS_STOPS: BusStop[] = BUS_ROUTES_API[0]['bus_stops'];
const BUS_STOP_SEARCH =
    `${BUS_STOPS[0]['name']}, Stop No.${BUS_STOPS[0]['number']}`;
const BUS_STOP_GUESS: string = BUS_STOP_SEARCH.substring(0, 3);

// Setup function that renders the main component.
const setup = (): RenderResult => render(<App/>);

describe('<BusRouteDropdown> Functionality of MUI Autocomplete', () => {
  it('should display the correct route upon user selection',
      async (): Promise<void> => {
        expect.assertions(1);
        setup();

        const busRouteDropdown: HTMLInputElement =
                screen.getByRole('combobox', {name: /select route/i});

        const view: UserEvent = userEvent.setup();

        await view.click(busRouteDropdown);
        await view.keyboard(BUS_ROUTE_GUESS);
        await view.keyboard('[ArrowDown]');
        await view.keyboard('[Enter]');

        expect(busRouteDropdown.value).toBe(BUS_ROUTE_SEARCH);
      });
});

describe('<BusStopDropdown> Functionality of MUI Autocomplete', () => {
  it('should not display options if route is not selected',
      async (): Promise<void> => {
        expect.assertions(1);
        setup();

        const busStopDropdown: HTMLInputElement =
                screen.getByRole('combobox', {name: /start/i});

        const view: UserEvent = userEvent.setup();

        await view.click(busStopDropdown);
        await view.keyboard(BUS_STOP_GUESS);
        await view.keyboard('[ArrowDown]');
        await view.keyboard('[Enter]');

        expect(busStopDropdown.value).not.toBe(BUS_STOP_SEARCH);
      });

  it('should display options if route is selected',
      async (): Promise<void> => {
        expect.assertions(1);
        setup();

        const busRouteDropdown: HTMLInputElement =
                screen.getByRole('combobox', {name: /select route/i});

        const busStopDropdown: HTMLInputElement =
                screen.getByRole('combobox', {name: /start/i});

        const view: UserEvent = userEvent.setup();

        await view.click(busRouteDropdown);
        await view.keyboard(BUS_ROUTE_SEARCH);
        await view.keyboard('[ArrowDown]');
        await view.keyboard('[Enter]');

        await view.click(busStopDropdown);
        await view.keyboard(BUS_STOP_GUESS);
        await view.keyboard('[ArrowDown]');
        await view.keyboard('[Enter]');

        expect(busStopDropdown.value).toBe(BUS_STOP_SEARCH);
      });

  it('should not display options unrelated to the selected route',
      async (): Promise<void> => {
        expect.assertions(1);
        setup();

        const busRouteDropdown: HTMLInputElement =
                screen.getByRole('combobox', {name: /select route/i});

        const busStopDropdown: HTMLInputElement =
                screen.getByRole('combobox', {name: /start/i});

        const view: UserEvent = userEvent.setup();

        await view.click(busRouteDropdown);
        await view.keyboard(WRONG_BUS_ROUTE_SEARCH);
        await view.keyboard('[ArrowDown]');
        await view.keyboard('[Enter]');

        await view.click(busStopDropdown);
        await view.keyboard(BUS_STOP_GUESS);
        await view.keyboard('[ArrowDown]');
        await view.keyboard('[Enter]');

        expect(busStopDropdown.value).not.toBe(BUS_STOP_SEARCH);
      });
});

describe('<ControlPanel> Functionality of SubmitButton', () => {
  it('should be be disabled by default', () => {
    expect.assertions(1);
    setup();

    expect(screen.getByRole('button', {name: /busme!/i}))
        .toHaveClass('Mui-disabled');
  });

  it('should be enabled when dropdowns are filled in',
      async (): Promise<void> => {
        expect.assertions(1);
        setup();

        const busRouteDropdown: HTMLInputElement =
                screen.getByRole('combobox', {name: /select route/i});

        const busStartDropdown: HTMLInputElement =
                screen.getByRole('combobox', {name: /start/i});

        const busFinishDropdown: HTMLInputElement =
                screen.getByRole('combobox', {name: /finish/i});

        const view: UserEvent = userEvent.setup();

        await view.click(busRouteDropdown);
        await view.keyboard(BUS_ROUTE_SEARCH);
        await view.keyboard('[ArrowDown]');
        await view.keyboard('[Enter]');

        await view.click(busStartDropdown);
        await view.keyboard(BUS_STOP_GUESS);
        await view.keyboard('[ArrowDown]');
        await view.keyboard('[Enter]');

        await view.click(busFinishDropdown);
        await view.keyboard(BUS_STOP_GUESS);
        await view.keyboard('[ArrowDown]');
        await view.keyboard('[Enter]');

        expect(screen.getByRole('button', {name: /busme!/i}))
            .not.toHaveClass('Mui-disabled');
      });
});

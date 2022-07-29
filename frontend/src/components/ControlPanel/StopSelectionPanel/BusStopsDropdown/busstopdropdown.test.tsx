import {render, RenderResult, screen} from '@testing-library/react';
import BusStopDropdown from './BusStopDropdown';
import BusRoute from '../../../../types/BusRoute';
import MOCK_BUS_ROUTES from '../../../../mockdata/MOCK_BUS_ROUTES.json';
import BusStop from '../../../../types/BusStop';
import {UserEvent} from '@testing-library/user-event/dist/types/setup';
import userEvent from '@testing-library/user-event';

const LABEL = 'Start';
const MOCK_ROUTE_SELECTION: BusRoute = MOCK_BUS_ROUTES[0];
const WRONG_MOCK_ROUTE_SEARCH: BusRoute = MOCK_BUS_ROUTES[1];
const BUS_STOPS: BusStop[] = MOCK_BUS_ROUTES[0]['bus_stops'];
const SELECTED_BUS_STOP: BusStop = BUS_STOPS[0];
const BUS_STOP_SEARCH =
  `${BUS_STOPS[0]['name']}, Stop No.${BUS_STOPS[0]['number']}`;
const BUS_STOP_GUESS: string = BUS_STOP_SEARCH.substring(0, 3);

const setup = (
  routeSelection: BusRoute | undefined,
  stopSelection: BusStop | undefined,
):
  RenderResult => render(
    <BusStopDropdown
      busRoutes={MOCK_BUS_ROUTES}
      busStops={BUS_STOPS}
      routeSelection={routeSelection}
      label={LABEL}
      selection={stopSelection}
      setSelection={jest.fn()}
      multiRoute={false}
    />,
);

const mockUserSearch = async (dropdown: HTMLInputElement): Promise<void> => {
  const view: UserEvent = userEvent.setup();

  await view.click(dropdown);
  await view.keyboard(BUS_STOP_GUESS);
  await view.keyboard('[ArrowDown]');
  await view.keyboard('[Enter]');
};

describe('<BusStopDropdown> Default render', () => {
  it('should show the default text', () => {
    expect.assertions(1);
    setup(MOCK_ROUTE_SELECTION, undefined);

    expect(screen.getByLabelText(LABEL)).toBeInTheDocument();
  });
});

describe('<BusStopDropdown> Route selection', () => {
  it('should display options if route is selected',
      async (): Promise<void> => {
        expect.assertions(1);
        setup(MOCK_ROUTE_SELECTION, undefined);

        const busStopDropdown: HTMLInputElement =
        screen.getByRole('combobox', {name: /start/i});

        await mockUserSearch(busStopDropdown);

        expect(busStopDropdown.value).toBe(BUS_STOP_SEARCH);
      });

  it('should not display options unrelated to the selected route',
      async (): Promise<void> => {
        expect.assertions(1);
        setup(WRONG_MOCK_ROUTE_SEARCH, undefined);

        const busStopDropdown: HTMLInputElement =
          screen.getByRole('combobox', {name: /start/i});

        await mockUserSearch(busStopDropdown);

        expect(busStopDropdown.value).not.toBe(BUS_STOP_SEARCH);
      });
});

describe('<BusStopDropdown> Marker integration', () => {
  it('should show the station in dropdown if marker was clicked',
    async (): Promise<void> => {
      expect.assertions(1);
      setup(MOCK_ROUTE_SELECTION, undefined);

      const busStopDropdown: HTMLInputElement =
        screen.getByRole('combobox', {name: /start/i});

      await mockUserSearch(busStopDropdown);

      expect(busStopDropdown.value).toBe(BUS_STOP_SEARCH);
    });

  it('should not display options unrelated to the selected route',
    async (): Promise<void> => {
      expect.assertions(1);
      setup(MOCK_ROUTE_SELECTION, SELECTED_BUS_STOP);

      const busStopDropdown: HTMLInputElement =
        screen.getByRole('combobox', {name: /start/i});

      expect(busStopDropdown.value).toBe(BUS_STOP_SEARCH);
    });
});

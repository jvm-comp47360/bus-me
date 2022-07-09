import {render, RenderResult, screen} from '@testing-library/react';
import BusStopDropdown from './BusStopDropdown';
import BusRoute from '../../../types/BusRoute';
import MOCK_BUS_ROUTES from '../../../mockdata/MOCK_BUS_ROUTES.json';
import BusStop from '../../../types/BusStop';
import {UserEvent} from '@testing-library/user-event/dist/types/setup';
import userEvent from '@testing-library/user-event';

const LABEL = 'Start';
const MOCK_ROUTE_SELECTION: BusRoute = MOCK_BUS_ROUTES[0];
const WRONG_MOCK_ROUTE_SEARCH: BusRoute = MOCK_BUS_ROUTES[1];
const BUS_STOPS: BusStop[] = MOCK_BUS_ROUTES[0]['bus_stops'];
const BUS_STOP_SEARCH =
  `${BUS_STOPS[0]['name']}, Stop No.${BUS_STOPS[0]['number']}`;
const BUS_STOP_GUESS: string = BUS_STOP_SEARCH.substring(0, 3);

const setup = (routeSelection: BusRoute | undefined):
  RenderResult => render(
    <BusStopDropdown
      busRoutes={MOCK_BUS_ROUTES}
      routeSelection={routeSelection}
      label={LABEL}
      setSelection={jest.fn()}
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
    setup(MOCK_ROUTE_SELECTION);

    expect(screen.getByLabelText(LABEL)).toBeInTheDocument();
  });
});

describe('<BusStopDropdown> Route selection', () => {
  it('should display options if route is selected',
      async (): Promise<void> => {
        expect.assertions(1);
        setup(MOCK_ROUTE_SELECTION);

        const busStopDropdown: HTMLInputElement =
        screen.getByRole('combobox', {name: /start/i});

        await mockUserSearch(busStopDropdown);

        expect(busStopDropdown.value).toBe(BUS_STOP_SEARCH);
      });

  it('should not display options unrelated to the selected route',
      async (): Promise<void> => {
        expect.assertions(1);
        setup(WRONG_MOCK_ROUTE_SEARCH);

        const busStopDropdown: HTMLInputElement =
          screen.getByRole('combobox', {name: /start/i});

        await mockUserSearch(busStopDropdown);

        expect(busStopDropdown.value).not.toBe(BUS_STOP_SEARCH);
      });
});

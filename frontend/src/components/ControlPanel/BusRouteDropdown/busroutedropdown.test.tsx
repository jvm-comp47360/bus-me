import {render, RenderResult, screen} from '@testing-library/react';
import BusRouteDropdown from './BusRouteDropdown';
import MOCK_BUS_ROUTES from '../../../mockdata/MOCK_BUS_ROUTES.json';
import BUS_ROUTES_API from '../../../mockdata/MOCK_BUS_ROUTES.json';
import {UserEvent} from '@testing-library/user-event/dist/types/setup';
import userEvent from '@testing-library/user-event';

const LABEL = 'Select Route';

const BUS_ROUTE_SEARCH: string = BUS_ROUTES_API[0]['name'];
const BUS_ROUTE_GUESS: string = BUS_ROUTES_API[0]['name'].substring(0);

const setup = (): RenderResult => render(
    <BusRouteDropdown
      busRoutes={MOCK_BUS_ROUTES}
      setRouteSelection={jest.fn()}
    />,
);

describe('<BusRouteDropdown> Default render', () => {
  it('should show the default text', () => {
    expect.assertions(1);
    setup();

    expect(screen.getByLabelText(LABEL)).toBeInTheDocument();
  });
});

describe('<BusRouteDropdown> Routes input', () => {
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



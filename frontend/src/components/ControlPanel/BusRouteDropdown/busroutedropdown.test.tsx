import {render, RenderResult, screen} from '@testing-library/react';
import BusRouteDropdown from './BusRouteDropdown';
import userEvent from '@testing-library/user-event';
import {UserEvent} from '@testing-library/user-event/dist/types/setup';

const MOCK_BUS_ROUTES: string[] = ['1', '2', '3'];
const BUS_ROUTE_SEARCH: string = MOCK_BUS_ROUTES[0];
const LABEL = 'Select Route';

const setup = (): RenderResult => render(
    <BusRouteDropdown busRoutes={MOCK_BUS_ROUTES}/>,
);

describe('<BusRouteDropdown> Functionality of MUI Autocomplete', () => {
  it('should show the default text', () => {
    expect.assertions(1);
    setup();

    expect(screen.getByLabelText(LABEL)).toBeInTheDocument();
  });

  it('should display valid option after text input',
      async (): Promise<void> => {
        expect.assertions(1);
        setup();

        const busRouteDropdown: HTMLInputElement =
            screen.getByRole('combobox', {name: /select route/i});

        const view: UserEvent = userEvent.setup();

        await view.click(busRouteDropdown);
        await view.keyboard(BUS_ROUTE_SEARCH);
        await view.keyboard('[ArrowDown]');
        await view.keyboard('[Enter]');

        expect(busRouteDropdown.value).toBe(BUS_ROUTE_SEARCH);
      });
});


import userEvent from '@testing-library/user-event';
import {render, RenderResult, screen} from '@testing-library/react';
import BusStopDropdown from './BusStopDropdown';
import MOCK_BUS_STOPS from '../../../mockdata/MOCK_BUS_STOPS.json';
import {UserEvent} from '@testing-library/user-event/dist/types/setup';

const LABEL = 'Start';
const BUS_STOP_SEARCH: string = MOCK_BUS_STOPS[0]['name'];
const BUS_STOP_RESULT: string = `${MOCK_BUS_STOPS[0]['name']}, ` +
                        `Stop No.${MOCK_BUS_STOPS[0]['number']}`;

const setup = (): RenderResult => render(
    <BusStopDropdown busStops={MOCK_BUS_STOPS} label={LABEL}/>,
);

describe('<ControlPanel/> Functionality of Autocomplete MUI components',
    (): void => {
      it('should display default text', (): void => {
        expect.assertions(1);
        setup();

        expect(screen.getByLabelText(LABEL)).toBeInTheDocument();
      });

      it('dropdown should display valid option after user text input',
          async (): Promise<void> => {
            expect.assertions(1);
            setup();

            const startDropdown: HTMLInputElement =
                screen.getByRole('combobox', {name: /start/i});

            const view: UserEvent = userEvent.setup();

            await view.click(startDropdown);
            await view.keyboard(BUS_STOP_SEARCH);
            await view.keyboard('[ArrowDown]');
            await view.keyboard('[Enter]');

            expect(startDropdown.value).toBe(BUS_STOP_RESULT);
          });
    });

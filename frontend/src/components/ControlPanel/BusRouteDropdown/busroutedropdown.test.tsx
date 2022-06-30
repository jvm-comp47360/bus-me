// import {render, RenderResult, screen} from '@testing-library/react';
// import BusRouteDropdown from './BusRouteDropdown';
// import userEvent from '@testing-library/user-event';
// import {UserEvent} from '@testing-library/user-event/dist/types/setup';
// import setBusRoutes from '../../App/App';
// import setBusStops from '../../App/App';
// import setRouteSelection from '../../App/App';
// import MOCK_BUS_ROUTES from '../../../mockdata/MOCK_BUS_ROUTES.json';
//
// const BUS_ROUTE_SEARCH: string = MOCK_BUS_ROUTES[0]['name'];
// const LABEL = 'Select Route';
//
// const setup = (): RenderResult => render(
//     <BusRouteDropdown
//       busRoutes={MOCK_BUS_ROUTES}
//       setBusRoutes={setBusRoutes}
//       busStops={[]}
//       setBusStops={setBusStops}
//       routeSelection={undefined}
//       setRouteSelection={setRouteSelection}
//     />,
// );
//
// describe('<BusRouteDropdown> Functionality of MUI Autocomplete', () => {
//   it('should show the default text', () => {
//     expect.assertions(1);
//     setup();
//
//     expect(screen.getByLabelText(LABEL)).toBeInTheDocument();
//   });
//
//   it('should display valid option after text input',
//       async (): Promise<void> => {
//         expect.assertions(1);
//         setup();
//
//         const busRouteDropdown: HTMLInputElement =
//             screen.getByRole('combobox', {name: /select route/i});
//
//         const view: UserEvent = userEvent.setup();
//
//         await view.click(busRouteDropdown);
//         await view.keyboard(BUS_ROUTE_SEARCH);
//         await view.keyboard('[ArrowDown]');
//         await view.keyboard('[Enter]');
//
//         expect(busRouteDropdown.value).toBe(BUS_ROUTE_SEARCH);
//       });
// });


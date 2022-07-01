// import {render, RenderResult, screen} from '@testing-library/react';
// import BusRouteDropdown from './BusRouteDropdown';
// import setBusRoutes from '../../App/App';
// import setBusStops from '../../App/App';
// import setRouteSelection from '../../App/App';
// import MOCK_BUS_ROUTES from '../../../mockdata/MOCK_BUS_ROUTES.json';
//
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
// describe('<BusRouteDropdown> Default render', () => {
//   it('should show the default text', () => {
//     expect.assertions(1);
//     setup();
//
//     expect(screen.getByLabelText(LABEL)).toBeInTheDocument();
//   });
// });
//

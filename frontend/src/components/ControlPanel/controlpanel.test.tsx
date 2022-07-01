// import {render, RenderResult, screen} from '@testing-library/react';
//
// import {AdapterDateFns} from '@mui/x-date-pickers/AdapterDateFns';
// import {LocalizationProvider} from '@mui/x-date-pickers';
//
// import ControlPanel from './ControlPanel';
// import setBusRoutes from '../App/App';
// import setBusStops from '../App/App';
// import setStartSelection from '../App/App';
// import setFinishSelection from '../App/App';
// import setRouteSelection from '../App/App';
// import setDateTimeSelection from '../App/App';
// import setPrediction from '../App/App';
//
// import MOCK_BUS_STOPS from '../../mockdata/MOCK_BUS_ROUTES.json';
//
// const setup = (): RenderResult => render(
//     <LocalizationProvider dateAdapter={AdapterDateFns}>
//       <ControlPanel
//         busRoutes={MOCK_BUS_STOPS}
//         setBusRoutes={setBusRoutes}
//         busStops={[]}
//         setBusStops={setBusStops}
//         startSelection={undefined}
//         setStartSelection={setStartSelection}
//         finishSelection={undefined}
//         setFinishSelection={setFinishSelection}
//         routeSelection={undefined}
//         setRouteSelection={setRouteSelection}
//         dateTimeSelection={undefined}
//         setDateTimeSelection={setDateTimeSelection}
//         prediction={undefined}
//         setPrediction={setPrediction}
//       />,
//     </LocalizationProvider>,
// );
//
// describe('<ControlPanel/> Default rendering', () => {
//   it('Station dropdowns should appear on the screen', () => {
//     expect.assertions(2);
//     setup();
//
//     expect(screen.getByRole('combobox', {name: /start/i})).toBeInTheDocument();
//     expect(screen.getByRole('combobox', {name: /finish/i})).toBeInTheDocument();
//   });
//
//   it('Datetime dropdown should appear on the screen', () => {
//     expect.assertions(1);
//     setup();
//
//     expect(screen.getByRole('textbox', {name: /choose date/i}))
//         .toBeInTheDocument();
//   });
//
//   it('submit button should appear on the screen', () => {
//     expect.assertions(1);
//     setup();
//
//     expect(screen.getByRole('button', {name: /busme!/i})).toBeInTheDocument();
//   });
// });

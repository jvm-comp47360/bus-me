// import ControlPanel from './ControlPanel';
// import {render, RenderResult, screen} from '@testing-library/react';
// import {AdapterDateFns} from '@mui/x-date-pickers/AdapterDateFns';
// import {LocalizationProvider} from '@mui/x-date-pickers';
// import MOCK_BUS_STOPS from '../../mockdata/MOCK_BUS_ROUTES.json';
// import setBusRoutes from '../App/App';
//
// // The setup automatically passes in the mock Bus Stops API,
// // as we are testing the call at the App component level.
// const setup = (): RenderResult => render(
//     <LocalizationProvider dateAdapter={AdapterDateFns}>
//       <ControlPanel busRoutes={MOCK_BUS_STOPS} setBusRoutes={setBusRoutes}/>,
//     </LocalizationProvider>,
// );
//
// describe('<ControlPanel/> Rendering UI elements', () => {
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
//
// describe('<ControlPanel/> Functionality of Submit Button', () => {
//   it('button should be be disabled by default', () => {
//     expect.assertions(1);
//     setup();
//
//     expect(screen.getByRole('button', {name: /busme!/i}))
//         .toHaveClass('Mui-disabled');
//   });
// });

import JourneyPanel from './JourneyPanel';
import {render, RenderResult, screen} from '@testing-library/react';
import mockData from '../../../mockdata/MOCK_BUS_ROUTES.json';

const mockRoute = mockData[0]
const mockStop = mockRoute.bus_stops[0];


const setUp = (prediction: number = 24.8): RenderResult => render(
    <JourneyPanel 
        time={new Date('Fri Jul 29 2022 15:29:05 GMT+0100')}
        busStop={mockStop}
        routeSelection={mockRoute}
        prediction={prediction}/>
);

describe('JourneyLeg tests', () => {
    describe('JourneyLegStop tests', () => {
        test('Time is rendered', () => {
            setUp();
            expect(screen.getByText(/15:29/i)).toBeInTheDocument();
        })
        test('Stop is rendered', () => {
            setUp();
            expect(screen.getByText(/Drumcondra Rail Stn/i)).toBeInTheDocument();
        })
    })
    describe('JourneyLegInfo tests', () => {
        test('Route is rendered', () => {
            setUp();
            expect(screen.getByText("1")).toBeInTheDocument();
        })
        test('Prediction is rendered (<60 mins)', () => {
            setUp();
            expect(screen.getByText(/25 mins/)).toBeInTheDocument();
        })
        test('Prediction is rendered (=60 mins)', () => {
            setUp(60.2);
            expect(screen.getByText(/\(1 hr\)/)).toBeInTheDocument();
        })
        test('Prediction is rendered (>=60 mins, <120 mins)', () => {
            setUp(89.8);
            expect(screen.getByText(/\(1 hr 30 mins\)/)).toBeInTheDocument();
        })
        test('Prediction is rendered (=120 mins)', () => {
            setUp(120.3);
            expect(screen.getByText(/\(2 hrs\)/)).toBeInTheDocument();
        })
        test('Prediction is rendered (<120 mins)', () => {
            setUp(159.7);
            expect(screen.getByText(/\(2 hrs 40 mins\)/)).toBeInTheDocument();
        })
    })
})
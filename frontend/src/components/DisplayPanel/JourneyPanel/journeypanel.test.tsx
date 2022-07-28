import JourneyPanel from './JourneyPanel';
import {render, RenderResult, screen} from '@testing-library/react';
import mockData from '../../../mockdata/MOCK_BUS_ROUTES.json';

const mockRoute = mockData[0]
const startStop = mockRoute.bus_stops[0];
const finishStop = mockRoute.bus_stops[1];


const setUp = (prediction: number = 24.8): RenderResult => render(
    <JourneyPanel 
        startSelection={startStop}
        departureTime={new Date('Fri Jul 29 2022 15:29:05 GMT+0100')}
        finishSelection={finishStop}
        routeSelection={mockRoute}
        prediction={prediction}/>
);

describe('JourneyLeg tests', () => {
    describe('JourneyLegStop tests', () => {
        test('startTime is rendered', () => {
            setUp();
            expect(screen.getByText(/15:29/i)).toBeInTheDocument();
        })
        test('startSelection is rendered', () => {
            setUp();
            expect(screen.getByText(/Drumcondra Rail Stn/i)).toBeInTheDocument();
        })
        test('finishTime is rendered', () => {
            setUp();
            expect(screen.getByText(/15:54/i)).toBeInTheDocument();
        })
        test('finishSelection is rendered', () => {
            setUp();
            expect(screen.getByText(/Dargle Road/i)).toBeInTheDocument();
        })
    })
    describe('JourneyLegInfo tests', () => {
        test('Route is rendered', () => {
            setUp();
            expect(screen.getByText("1")).toBeInTheDocument();
        })
        test('Prediction is rendered (<60 mins)', () => {
            setUp();
            expect(screen.getByText(/25m/)).toBeInTheDocument();
        })
        test('Prediction is rendered (=60 mins)', () => {
            setUp(60.2);
            expect(screen.getByText(/1h/)).toBeInTheDocument();
        })
        test('Prediction is rendered (>=61 mins, <120 mins)', () => {
            setUp(89.8);
            expect(screen.getByText(/1h30m/)).toBeInTheDocument();
        })
        test('Prediction is rendered (=120 mins)', () => {
            setUp(120.3);
            expect(screen.getByText(/2h/)).toBeInTheDocument();
        })
        test('Prediction is rendered (<120 mins)', () => {
            setUp(159.7);
            expect(screen.getByText(/2h40m/)).toBeInTheDocument();
        })
    })
})
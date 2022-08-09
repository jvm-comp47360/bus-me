import JourneyPanel from './JourneyPanel';
import {render, RenderResult, screen} from '@testing-library/react';
import mockData from '../../../mockdata/MOCK_BUS_ROUTES.json';
import mockDirectionsData from '../../../mockdata/MOCK_DIRECTIONS.json'
import BusRoute from "../../../types/BusRoute";

const mockRoute = mockData[0]
const startStop = mockRoute.bus_stops[0];
const finishStop = mockRoute.bus_stops[1];

const setUp = (
    directions: google.maps.DirectionsResult | null = null,
    prediction: number = 24.8,
    departureTime: Date = new Date('Fri Jul 29 2022 15:29:05 GMT+0100'),
    predictionStages: number[] = [],
    routeSelection: BusRoute | undefined = mockRoute,
): RenderResult => render(
    <JourneyPanel 
        startSelection={startStop}
        departureTime={departureTime}
        finishSelection={finishStop}
        routeSelection={routeSelection}
        prediction={prediction}
        collapseJourneyPanel={false}
        setCollapseJourneyPanel={jest.fn()}
        directions={directions}
        predictionStages={predictionStages}
    />
);

describe('JourneyPanel test', () => {
    test('Panel heading renders', () => {
        setUp(null)
        expect(screen.getByText(/your journey/i)).toBeInTheDocument();
    })
})

describe('JourneyLeg tests', () => {
    describe('JourneyLegStop tests', () => {
        describe('startTime tests', () => {
            test('startTime is rendered', () => {
                setUp(null);
                expect(screen.getByText(/15:29/i)).toBeInTheDocument();
            })
            test('startTime is rendered (15:00)', () => {
                setUp(null, 24.8, new Date('Fri Jul 29 2022 15:00:05 GMT+0100'));
                expect(screen.getByText(/15:00/i)).toBeInTheDocument();
            })
            test('startTime is rendered (00:00)', () => {
                setUp(null, 24.8, new Date('Fri Jul 29 2022 00:00:05 GMT+0100'));
                expect(screen.getByText(/00:00/i)).toBeInTheDocument();
            })
            test('startTime is rendered (08:00)', () => {
                setUp(null, 24.8, new Date('Fri Jul 29 2022 08:00:05 GMT+0100'));
                expect(screen.getByText(/08:00/i)).toBeInTheDocument();
            })
        })
        test('startSelection is rendered', () => {
            setUp(null);
            expect(screen.getByText(/Drumcondra Rail Stn/i)).toBeInTheDocument();
        })






        test('finishSelection is rendered', () => {
            setUp(null);
            expect(screen.queryAllByAltText(/Dargle Road/i)).not.toBeNull();
        })






        describe('finishTime tests', () => {
            test('finishTime is rendered', () => {
                setUp(null);
                expect(screen.getByText(/15:54/i)).toBeInTheDocument();
            })
            test('finishTime is rendered (60 minute journey)', () => {
                setUp(null, 60);
                expect(screen.getByText(/16:29/i)).toBeInTheDocument();
            })
            test('finishTime is rendered (90 minute journey)', () => {
                setUp(null, 90);
                expect(screen.getByText(/16:59/i)).toBeInTheDocument();
            })
            test('finishTime is rendered (150 minute journey)', () => {
                setUp(null, 150);
                expect(screen.getByText(/17:59/i)).toBeInTheDocument();
            })
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
            setUp(null, 60.2);
            expect(screen.getByText(/1h/)).toBeInTheDocument();
        })
        test('Prediction is rendered (>=61 mins, <120 mins)', () => {
            setUp(null, 89.8);
            expect(screen.getByText(/1h 30m/)).toBeInTheDocument();
        })
        test('Prediction is rendered (=120 mins)', () => {
            setUp(null, 120.3);
            expect(screen.getByText(/2h/)).toBeInTheDocument();
        })
        test('Prediction is rendered (<120 mins)', () => {
            setUp(null, 159.7);
            expect(screen.getByText(/2h 40m/)).toBeInTheDocument();
        })
    })
})

// describe('MultiRoute tests', () => {
//     test('Routes are rendered', async () => {
//         await setUp(mockDirections,
//           24.8,
//           new Date('Fri Jul 29 2022 15:29:05 GMT+0100'),
//           [5, 10], undefined);
//         await expect(screen.getByText(mockRoutesResult[0])).toBeInTheDocument()
//         await expect(screen.getByText(mockRoutesResult[1])).toBeInTheDocument()
//     })
// })
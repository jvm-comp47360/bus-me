import JourneyPanel from './JourneyPanel';
import {render, RenderResult, screen} from '@testing-library/react';
import mockData from '../../../mockdata/MOCK_BUS_ROUTES.json';

const mockRoute = mockData[0]
const mockStop = mockRoute.bus_stops[0];


const setUp = (): RenderResult => render(
    <JourneyPanel 
        time={new Date('Fri Jul 29 2022 15:29:05 GMT+0100')}
        busStop={mockStop}
        routeSelection={mockRoute}/>
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
    describe('JourneyLefInfo tests', () => {
        test('Route is rendered', () => {
            setUp();
            expect(screen.getByText("1")).toBeInTheDocument();
        })
    })
})
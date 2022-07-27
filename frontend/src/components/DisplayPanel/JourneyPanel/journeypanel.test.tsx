import JourneyPanel from './JourneyPanel';
import {render, RenderResult, screen} from '@testing-library/react';
import mockData from '../../../mockdata/MOCK_BUS_ROUTES.json';

const mockStop = mockData[0].bus_stops[0];

const setUp = (): RenderResult => render(
    <JourneyPanel 
        time={new Date('Fri Jul 29 2022 15:29:05 GMT+0100')}
        busStop={mockStop}/>
);

describe('JourneyLeg tests', () => {
    test('JourneyLegStop: time is rendered', () => {
        setUp();
        expect(screen.getByText(/15:29/i)).toBeInTheDocument();
    })
    test('JourneyLegStop: stop is rendered', () => {
        setUp();
        expect(screen.getByText(/Drumcondra Rail Stn/i)).toBeInTheDocument();
    })
})
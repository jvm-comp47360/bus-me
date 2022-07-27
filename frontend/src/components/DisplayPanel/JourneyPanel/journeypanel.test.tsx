import JourneyPanel from './JourneyPanel';
import {render, screen} from '@testing-library/react';
import mockData from '../../../mockdata/MOCK_BUS_ROUTES.json';

const mockStop = mockData[0].bus_stops[0];

describe('JourneyLeg tests', () => {
    test('JourneyLeg stop time is rendered', () => {
        render(<JourneyPanel time={new Date('Fri Jul 29 2022 15:29:05 GMT+0100')}/>)
        expect(screen.getByText(/15:29/i)).toBeInTheDocument()
    })
})
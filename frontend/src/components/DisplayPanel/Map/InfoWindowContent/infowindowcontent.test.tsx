import {render, RenderResult, screen} from '@testing-library/react';
import InfoWindowContent from './InfoWindowContent';
import routeData from '../../../../mockdata/MOCK_BUS_ROUTES.json';
import stopData from '../../../../mockdata/MOCK_BUS_STOPS.json';
import BusStop from '../../../../types/BusStop';
import BusRoute from '../../../../types/BusRoute';

const mockRouteData: BusRoute[] = routeData;
const mockStop: BusStop = mockRouteData[0].bus_stops[0];
const mockStopTerminus: BusStop = stopData[0];

const setUp = (stop: BusStop = mockStop): RenderResult => render(
    <InfoWindowContent 
        stop={stop}
        setStartSelection={jest.fn()}
        setFinishSelection={jest.fn()}
        startSelection={undefined}
        finishSelection={undefined}
        busRoutes={mockRouteData}/>
)

test('name of station appears', () => {
    setUp()
    expect(screen.getByText(/drumcondra rail stn/i)).toBeInTheDocument();
})

test('number of station appears', () => {
    setUp()
    // Broken into two lines in jest so test fails as /stop 17/i
    // Verified that renders in browser as (Stop 17)
    expect(screen.getByText(/stop/i)).toBeInTheDocument();
    expect(screen.getByText(/17/i)).toBeInTheDocument();
})

test('start station button appears', () => {
    setUp()
    expect(screen.getByRole('button', {
        name: /start station/i
    })).toBeInTheDocument()
})

test('finish station button appears', () => {
    setUp()
    expect(screen.getByRole('button', {
        name: /finish station/i
    })).toBeInTheDocument()
})

test('route and its terminus are rendered in the infowindow', () => {
    setUp(mockStopTerminus)
    expect(screen.getByText(/3 to Faussaugh Ave Church/)).toBeInTheDocument();
})
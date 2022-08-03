import {render, RenderResult, screen} from '@testing-library/react';
import InfoWindowContent from './InfoWindowContent';
import mockData from '../../../../mockdata/MOCK_BUS_ROUTES.json';

const mockStop = mockData[0].bus_stops[0];

const setUp = (): RenderResult => render(
    <InfoWindowContent 
        stop={mockStop}
        setStartSelection={jest.fn()}
        setFinishSelection={jest.fn()}
        startSelection={undefined}
        finishSelection={undefined}/>
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
    setUp()
    expect(screen.getByText(/39A to UCD Belfield/)).toBeInTheDocument();
    expect(screen.getByText(/145 to Dun Laoghire/)).toBeInTheDocument();
    expect(screen.getByText(/155 to Bray/)).toBeInTheDocument();
})
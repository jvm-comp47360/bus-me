import JourneyLeg from './JourneyLeg';
import {render, RenderResult, screen} from '@testing-library/react';
import mockData from '../../../../mockdata/MOCK_BUS_ROUTES.json';
import mockDirectionsData from '../../../../mockdata/MOCK_DIRECTIONS.json';

const mockRoute = mockData[0];
const startStop = mockRoute.bus_stops[0];
const finishStop = mockRoute.bus_stops[1];
const mockPredictionStages: number[] = [5, 10];
const mockDirections: google.maps.DirectionsResult =
  mockDirectionsData as unknown as google.maps.DirectionsResult;
const mockRoutesResult = ['140', '14'];

const setUp = (): RenderResult => render(
    <JourneyLeg
      startSelection={startStop}
      departureTime={new Date('Fri Jul 29 2022 15:29:05 GMT+0100')}
      finishSelection={finishStop}
      routeSelection={undefined}
      prediction={28}
      predictionStages={mockPredictionStages}
      directions={mockDirections}
    />,
);

describe('<JourneyLeg> Rendering Google Maps directions', () => {
  test('Both routes render', () => {
    setUp();
    expect(screen.getByText(mockRoutesResult[0])).toBeInTheDocument();
    expect(screen.getByText(mockRoutesResult[1])).toBeInTheDocument();
  });

  test('Both time predictions render', () => {
    setUp();
    expect(screen.getByText('5m')).toBeInTheDocument();
    expect(screen.getByText('10m')).toBeInTheDocument();
  });

  test('All stations to be in the document', () => {
    setUp();
    expect(screen.getByText(startStop.name)).toBeInTheDocument();
    expect(screen.getByText(finishStop.name)).toBeInTheDocument();
    expect(screen.getAllByText('Dame Street')).toHaveLength(2);
  });

  test('Whole timetable to be in the document', () => {
    setUp();
    expect(screen.getByText('15:29')).toBeInTheDocument();
    expect(screen.getByText('15:34')).toBeInTheDocument();
    expect(screen.getByText('19:03')).toBeInTheDocument();
    expect(screen.getByText('19:13')).toBeInTheDocument();
  });
});

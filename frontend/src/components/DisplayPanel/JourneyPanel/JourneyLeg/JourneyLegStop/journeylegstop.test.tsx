import JourneyLegStop from './JourneyLegStop';
import {render, RenderResult, screen} from '@testing-library/react';
import mockData from '../../../../../mockdata/MOCK_BUS_ROUTES.json';
import BusStop from '../../../../../types/BusStop';

const mockRoute = mockData[0];
const startStop = mockRoute.bus_stops[0];


const setUp = (
    stopSelection: BusStop | string = startStop,
    time: Date = new Date('Fri Jul 29 2022 15:29:05 GMT+0100'),
): RenderResult => render(
    <JourneyLegStop
      time={time}
      stopSelection={stopSelection}
    />,
);

describe('<JourneyPanel> Rendering station name', () => {
  test('BusStop selection renders', () => {
    setUp();
    expect(screen.getByText(startStop.name)).toBeInTheDocument();
  });

  test('GoogleMaps  selection renders', () => {
    setUp('Cool Station');
    expect(screen.getByText('Cool Station')).toBeInTheDocument();
  });
});

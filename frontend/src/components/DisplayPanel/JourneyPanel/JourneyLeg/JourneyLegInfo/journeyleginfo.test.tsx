import JourneyLegInfo from './JourneyLegInfo';
import {render, RenderResult, screen} from '@testing-library/react';
import mockData from '../../../../../mockdata/MOCK_BUS_ROUTES.json';
import BusRoute from "../../../../../types/BusRoute";

const mockRoute = mockData[0]


const setUp = (
  routeSelection: BusRoute | string = mockRoute,
  prediction: number = 5,
): RenderResult => render(
  <JourneyLegInfo
    routeSelection={routeSelection}
    prediction={prediction}
  />
);

describe('<JourneyLegInfo> Rendering route name', () => {
  test('BusRoute selection renders', () => {
    setUp()
    expect(screen.getByText(mockRoute.name.split(" ")[0])).toBeInTheDocument();
  })

  test('GoogleMaps selection renders', () => {
    setUp('999')
    expect(screen.getByText('999')).toBeInTheDocument();
  })
})
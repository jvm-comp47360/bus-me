import AnalyticsPanel from './AnalyticsPanel';
import {render, RenderResult, screen} from '@testing-library/react';
import BusRoute from "../../../../types/BusRoute";
import MOCK_BUS_ROUTES from "../../../../mockdata/MOCK_BUS_ROUTES.json";
import BusStop from "../../../../types/BusStop";

const MOCK_CURRENT_ROUTE: BusRoute = MOCK_BUS_ROUTES[0];
const MOCK_START_STATION: BusStop = MOCK_CURRENT_ROUTE['bus_stops'][0];
const MOCK_FINISH_STATION: BusStop = MOCK_CURRENT_ROUTE['bus_stops'][1];

const setUp = ():RenderResult => render(
  <AnalyticsPanel
    routeSelection={MOCK_CURRENT_ROUTE}
    startSelection={MOCK_START_STATION}
    finishSelection={MOCK_FINISH_STATION}
    prediction={5}
    predictionList={[]}
    setPredictionList={jest.fn()}
    directions={null}
    dateTimeSelection={new Date()}
  />
);

test('Paragraph renders', () => {
    setUp()
    expect(screen.getByText(/Plan your day better/i)).toBeInTheDocument();
})

test('Journey Times Button renders', () => {
    setUp();
    expect(screen.getByText(/Journey Times/i)).toBeInTheDocument();
})
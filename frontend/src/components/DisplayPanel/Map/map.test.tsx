import Map from './Map';
import {render} from '@testing-library/react';
import * as reactGoogleMaps from '@react-google-maps/api';

import busRoutesAPI from '../../../mockdata/MOCK_BUS_ROUTES.json';

test('useLoadScript called during render', () => {
  const loadScriptMethod = jest.spyOn(reactGoogleMaps, 'useLoadScript');
  const startSelection = busRoutesAPI[0].bus_stops[0];
  const finishSelection = busRoutesAPI[0].bus_stops[1];

  render(<Map 
          startSelection={startSelection} 
          finishSelection={finishSelection}
          directions={null}
          setDirections={jest.fn()}/>);
  expect(loadScriptMethod).toHaveBeenCalledTimes(1);
});

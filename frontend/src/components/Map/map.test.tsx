import Map from './Map';
import {render} from '@testing-library/react';
import * as reactGoogleMaps from '@react-google-maps/api';

test('useLoadScript called during render', () => {
  const loadScriptMethod = jest.spyOn(reactGoogleMaps, 'useLoadScript');
  render(<Map />);
  expect(loadScriptMethod).toHaveBeenCalledTimes(1);
});

import {render, RenderResult, screen} from '@testing-library/react';
import BusStopDropdown from './BusStopDropdown';
import setBusStops from '../../App/App';
import setSelection from '../../App/App';

const LABEL = 'Start';

const setup = (): RenderResult => render(
    <BusStopDropdown
      busStops={[]}
      setBusStops={setBusStops}
      label={LABEL}
      selection={undefined}
      setSelection={setSelection}
    />,
);

describe('<BusStopDropdown> Default render', () => {
  it('should show the default text', () => {
    expect.assertions(1);
    setup();

    expect(screen.getByLabelText(LABEL)).toBeInTheDocument();
  });
});

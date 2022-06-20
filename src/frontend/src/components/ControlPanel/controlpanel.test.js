import ControlPanel from './ControlPanel.tsx';
import {render, screen} from '@testing-library/react';

// A mock sample output of the Bus Stops API.
const MOCK_BUS_STOPS = require('../../mockdata/MOCK_BUS_STOPS.json');

// The setup automatically passes in the mock Bus Stops API,
// as we are testing the call at the App component level.
const setup = () => render(<ControlPanel busStops={MOCK_BUS_STOPS}/>);

describe('<ControlPanel/> Rendering UI elements', () => {
  it('dropdowns should appear on the screen', () => {
    expect.assertions(2);
    setup();

    expect(screen.getByRole('combobox', {name: /start/i})).toBeInTheDocument();
    expect(screen.getByRole('combobox', {name: /finish/i})).toBeInTheDocument();
  });

  it('submit button should appear on the screen', () => {
    expect.assertions(1);
    setup();

    expect(screen.getByRole('button', {name: /busme!/i})).toBeInTheDocument();
  });
});

describe('<ControlPanel/> Functionality of Submit Button', () => {
  it('button should be be disabled by default', () => {
    expect.assertions(1);
    setup();

    expect(screen.getByRole('button', {name: /busme!/i}))
        .toHaveClass('Mui-disabled');
  });
});

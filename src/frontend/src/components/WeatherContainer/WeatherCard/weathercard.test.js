import WeatherCard from './WeatherCard';
import {render, screen} from '@testing-library/react';

const MOCK_WEATHER_API = require('../../../mockdata/MOCK_WEATHER.json');
const ICON = MOCK_WEATHER_API[0]['icon'];
const DATE = MOCK_WEATHER_API[0]['date'];

const setup = () => render(
    <WeatherCard icon={ICON} date={DATE}/>,
);

describe('<WeatherCard/> Icon functionality', () => {
  it('must show an icon', () => {
    expect.assertions(1);
    setup();
    expect(screen.getByRole('img')).toBeInTheDocument();
  });

  it('must show the correct icon', () => {
    expect.assertions(1);
    setup();
    expect(screen.getByRole('img'))
        .toHaveAttribute('src', `${ICON}.png`);
  });
});

// Note: We are getting by text here because we are specifically
// trying to check if the exact text has been rendered on the
// screen.
describe('<WeatherCard/> Date functionality', () => {
  it('must show the correct date', () => {
    expect.assertions(1);
    setup();
    expect(screen.getByText(DATE)).toBeInTheDocument();
  });
});

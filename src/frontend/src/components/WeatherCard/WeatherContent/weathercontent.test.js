import WeatherContent from './WeatherContent';
import {render, screen} from '@testing-library/react';

const MOCK_WEATHER_API = require('../../../mockdata/MOCK_WEATHER.json');
const ICON = MOCK_WEATHER_API[0]['icon'];
const DATE = MOCK_WEATHER_API[0]['date'];

const setup = () => render(
    <WeatherContent icon={ICON} date={DATE}/>,
);

describe('<WeatherContent/> Icon functionality', () => {
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

describe('<WeatherContent/> Date functionality', () => {
  it('must show the correct date', () => {
    expect.assertions(1);
    setup();
    expect(screen.getByText(DATE)).toBeInTheDocument();
  });
});

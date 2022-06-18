import WeatherCard from './WeatherCard';
import {render, screen} from '@testing-library/react';

const MOCK_WEATHER_API = require('../../mockdata/MOCK_WEATHER.json')[0];
const ICON = MOCK_WEATHER_API['icon'];
const DATE = MOCK_WEATHER_API['date'];
const WEATHERTEXT = MOCK_WEATHER_API['weatherText'];
const TEMPERATURE = MOCK_WEATHER_API['temperature'];

const setup = () => render(
    <WeatherCard weather={MOCK_WEATHER_API}/>,
);

describe('<WeatherCard/> Weather icon functionality', () => {
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


describe('<WeatherCard/> Text display', () => {
  it('must show the correct date', () => {
    expect.assertions(1);
    setup();
    expect(screen.getByText(DATE)).toBeInTheDocument();
  });

  it('must show the correct weather text', () => {
    expect.assertions(1);
    setup();
    expect(screen.getByText(WEATHERTEXT)).toBeInTheDocument();
  });

  it('must show the correct temperature', () => {
    expect.assertions(1);
    setup();
    expect(screen.getByText(`${TEMPERATURE}°C`)).toBeInTheDocument();
  });
});

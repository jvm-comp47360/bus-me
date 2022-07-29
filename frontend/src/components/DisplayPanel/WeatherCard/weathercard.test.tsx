import {render, RenderResult, screen} from '@testing-library/react';

import WeatherCard from './WeatherCard';

import MOCK_WEATHER_DATA from '../../../mockdata/MOCK_WEATHER.json';
import Weather from '../../../types/Weather';

const MOCK_WEATHER_API: Weather = MOCK_WEATHER_DATA[0];
const ICON: string = MOCK_WEATHER_API['icon'];

const setup = (): RenderResult => render(
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
  it('must show the correct weather text', () => {
    expect.assertions(1);
    setup();
    expect(screen.getByText(/sunny/i)).toBeInTheDocument();
  });

  it('must show the correct temperature', () => {
    expect.assertions(2);
    setup();
    expect(screen.getByText(/20/i)).toBeInTheDocument();
    expect(screen.getByText(/°C/i)).toBeInTheDocument();
  });
});

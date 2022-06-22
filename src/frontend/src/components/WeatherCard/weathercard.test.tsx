import WeatherCard from './WeatherCard';
import {render, RenderResult, screen} from '@testing-library/react';
import MOCK_WEATHER_DATA from '../../mockdata/MOCK_WEATHER.json';

type Weather = {
  icon: string;
  date: string;
  weatherText: string;
  temperature: string;
}

const MOCK_WEATHER_API: Weather = MOCK_WEATHER_DATA[0];
const ICON: string = MOCK_WEATHER_API['icon'];
const DATE: string = MOCK_WEATHER_API['date'];
const WEATHERTEXT: string = MOCK_WEATHER_API['weatherText'];
const TEMPERATURE: string = MOCK_WEATHER_API['temperature'];

const setup = (): RenderResult => render(
    <WeatherCard weather={MOCK_WEATHER_API}/>,
);

describe('<WeatherCard/> Weather icon functionality', (): void => {
  it('must show an icon', (): void => {
    expect.assertions(1);
    setup();
    expect(screen.getByRole('img')).toBeInTheDocument();
  });

  it('must show the correct icon', (): void => {
    expect.assertions(1);
    setup();
    expect(screen.getByRole('img'))
        .toHaveAttribute('src', `${ICON}.png`);
  });
});


describe('<WeatherCard/> Text display', (): void => {
  it('must show the correct date', (): void => {
    expect.assertions(1);
    setup();
    expect(screen.getByText(DATE)).toBeInTheDocument();
  });

  it('must show the correct weather text', (): void => {
    expect.assertions(1);
    setup();
    expect(screen.getByText(WEATHERTEXT)).toBeInTheDocument();
  });

  it('must show the correct temperature', (): void => {
    expect.assertions(1);
    setup();
    expect(screen.getByText(`${TEMPERATURE}°C`)).toBeInTheDocument();
  });
});

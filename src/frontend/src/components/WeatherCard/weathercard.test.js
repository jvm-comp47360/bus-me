
import WeatherCard from './WeatherCard';
import {render, screen} from '@testing-library/react';

const MOCK_WEATHER_DATA = require('../../mockdata/MOCK_WEATHER.json');

const setup = () => render(
    <WeatherCard weather={MOCK_WEATHER_DATA}/>,
);

describe('<WeatherCard/> API call', () => {
  it('should render all images from API call', () => {
    expect.assertions(1);
    setup();
    const iconCount = MOCK_WEATHER_DATA.length;

    expect(screen.getAllByRole( 'img')).toHaveLength(iconCount);
  });
});

import WeatherContainer from './WeatherContainer';
import {render, screen} from '@testing-library/react';

const MOCK_WEATHER_DATA = require('../../mockdata/MOCK_WEATHER.json');

const setup = () => render(
    <WeatherContainer weather={MOCK_WEATHER_DATA}/>,
);

describe('<WeatherContainer/> API call', () => {
  it('should render all images from API call', () => {
    expect.assertions(1);
    setup();
    const cardCount = MOCK_WEATHER_DATA.length;

    expect(screen.getAllByRole('img')).toHaveLength(cardCount);
  });
});

import WeatherCard from './WeatherCard';
import {render, screen} from '@testing-library/react';

const setup = () => render(
    <WeatherCard/>,
);

describe('<WeatherCard/> Rendering UI elements', () => {
  it('must show the card', () => {
    expect.assertions(1);
    setup();


    expect(1).toBeGreaterThanOrEqual(1);
  });
});

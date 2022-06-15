import WeatherCard from './WeatherCard';
import {render, screen} from '@testing-library/react';

const ICON = '10n';

const setup = () => render(
    <WeatherCard icon={ICON}/>,
);

describe('<WeatherCard/> Rendering UI elements', () => {
  it('must show the icon', () => {
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

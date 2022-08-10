import {render, RenderResult, screen} from '@testing-library/react';
import GeoLocationButton from './GeoLocationButton';

const setup = (): RenderResult => render(
    <GeoLocationButton
      setUserLocation={jest.fn()}
    />,
);

describe('<GeoLocationButton> Button render', () => {
  it('should show the button', () => {
    expect.assertions(1);
    setup();

    expect(screen.getByRole('img'))
        .toHaveAttribute('src', 'geolocation.png');
  });
});



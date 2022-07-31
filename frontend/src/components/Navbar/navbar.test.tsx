import Navbar from './Navbar';
import {render, RenderResult, screen} from '@testing-library/react';

// eslint-disable-next-line testing-library/no-render-in-setup
beforeEach((): RenderResult => render(
  <Navbar
    multiRoute={false}
    setMultiRoute={jest.fn()}
    setStartSelection={jest.fn()}
    setFinishSelection={jest.fn()}
    setRouteSelection={jest.fn()}
    setPrediction={jest.fn()}
    setDirections={jest.fn()}
    setRouteDisplayIsOn={jest.fn()}
  />
));

test('BusMe logo appears in Navbar', () => {
  expect(screen.getByAltText('bus-me-logo-nav')).toBeInTheDocument();
});

describe('Nav menu items appear on page', () => {
  const sitePages: string[] = ['Contact', 'App', 'About'];
  sitePages.forEach((page): void => {
    const pageRe = new RegExp(page, 'i');
    test(`${page} button appears`, () => {
      expect(screen.getByRole('link', {
        name: pageRe})).toBeInTheDocument();
    });

    test('Multiroute toggle appears', () => {
      expect(screen.getByRole('checkbox')).toBeInTheDocument();
    });
  });
});

import Navbar from './Navbar';
import {render, RenderResult, screen} from '@testing-library/react';

beforeEach((): RenderResult => render(<Navbar />));

test('BusMe logo appears in Navbar', () => {
  expect(screen.getByAltText('bus-me-logo-nav')).toBeInTheDocument();
});

describe('Nav menu items appear on page', () => {
  const sitePages: string[] = ['Contact', 'App', 'About', 'Login'];
  sitePages.forEach((page): void => {
    const pageRe = new RegExp(page, 'i');
    test(`${page} button appears`, () => {
      expect(screen.getByRole('link', {
        name: pageRe})).toBeInTheDocument();
    });
  });
});

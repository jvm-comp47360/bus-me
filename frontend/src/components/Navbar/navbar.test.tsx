import Navbar from './Navbar';
import {render, RenderResult, screen} from '@testing-library/react';

beforeEach((): RenderResult => render(<Navbar />));

test('BusMe logo appears in Navbar', () => {
  expect(screen.getByAltText('bus-me-logo')).toBeInTheDocument();
});

describe('Nav menu items appear on page', () => {
  const sitePages: string[] = ['Contact', 'App', 'About', 'Login'];
  sitePages.forEach((page): void => {
    const pageRe: RegExp = new RegExp(page, 'i');
    test(`${page} button appears`, () => {
      expect(screen.getByRole('button', {
        name: pageRe})).toBeInTheDocument();
    });
  });
});

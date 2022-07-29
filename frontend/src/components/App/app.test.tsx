import {render, RenderResult, screen} from '@testing-library/react';
import App from './App';

// Note: I have removed tests relating to dropdowns.
// This is because what renders when will change once
// I start to incorporate the Splide.

// Setup function that renders the main component.
const setup = (): RenderResult => render(<App/>);

describe('<App/> Renders UI components on the screen', () => {
  it('renders control panel on the screen', () => {
    expect.assertions(5);
    setup();
    expect(screen.getByRole('combobox', {name: /select route/i})).toBeInTheDocument();
    expect(screen.queryByRole('combobox', {name: /start/i})).toBeNull();
    expect(screen.queryByRole('combobox', {name: /finish/i})).toBeNull();
    expect(screen.getByRole('button', {name: /plan journey/i})).toBeInTheDocument();
    expect(screen.queryByRole('textbox', {name: /choose date/i}))
      .toBeNull();
  });
  it('renders navbar on the screen', () => {
    setup();
    expect(screen.getByAltText('bus-me-logo-nav')).toBeInTheDocument();
  });
  it('renders about section on the screen', () => {
    setup();
    expect(screen.getByText(/about busme/i)).toBeInTheDocument();
  });
});


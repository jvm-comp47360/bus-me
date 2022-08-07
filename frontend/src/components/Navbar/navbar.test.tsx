import Navbar from './Navbar';
import {render, RenderResult, screen} from '@testing-library/react';
import {UserEvent} from "@testing-library/user-event/dist/types/setup";
import userEvent from "@testing-library/user-event";

// eslint-disable-next-line testing-library/no-render-in-setup
beforeEach((): RenderResult => render(
  <Navbar
    multiRoute={false}
    setMultiRoute={jest.fn}
    setRouteSelection={jest.fn}
    setStartSelection={jest.fn}
    setFinishSelection={jest.fn}
    setPrediction={jest.fn}
    setDirections={jest.fn}
  />
));

test('BusMe logo appears in Navbar', () => {
  expect(screen.getByAltText('bus-me-logo-nav')).toBeInTheDocument();
});

describe('Nav menu items appear on page', () => {
  const sitePages: string[] = ['App', 'About'];
  sitePages.forEach((page): void => {
    const pageRe = new RegExp(page, 'i');
    test(`${page} button appears`, () => {
      expect(screen.getByRole('button', {
        name: pageRe})).toBeInTheDocument();
    });
  });
});

describe('Navbar items functionality', () => {
  test('it should show about modal when clicked', async () => {

    const aboutButton: HTMLButtonElement =
      screen.getByRole('button', {name: /about/i});

    const view: UserEvent = userEvent.setup();
    await view.click(aboutButton);

    expect(screen.getByText('BusMe is a web application that predicts bus journey times in Dublin City. ' +
      'It was created by Jack Mulligan, Miao Shi and Vlad Rakhmanin as part of the ' +
      'UCD MSc Computer Science (Conversion) course.')).toBeInTheDocument()

    expect(screen.getByRole('button', {name: /back to map/i}))
      .toBeInTheDocument();
  })

  test('it should show the mobile modal when clicked', async () => {
    const appButton: HTMLButtonElement =
      screen.getByRole('button', {name: /app/i});

    const view: UserEvent = userEvent.setup();
    await view.click(appButton);

    expect(screen.getByAltText('bus-me-mobile')).toBeInTheDocument();

    expect(screen.getByText('The mobile version of BusMe is currently in beta, ' +
      'and is available for both iOS and Android platforms. ' +
      'We are currently welcoming testers for both platforms - ' +
      'please click the buttons below to either get in touch with the development team, ' +
      'or to access the code repository.')).toBeInTheDocument()

    expect(screen.getByRole('link', {name: /Contact/i}))
      .toBeInTheDocument();

    expect(screen.getByRole('link', {name: /GitHub/i}))
      .toBeInTheDocument();

    expect(screen.getByRole('button', {name: /back to map/i}))
      .toBeInTheDocument();
  })
});

describe('MultiRoute functionality', () => {
  test('it should show dropdown when clicked', async () => {

    const dropdownButton: HTMLButtonElement =
      screen.getByRole('button', {name: /Route Mode/i});

    const view: UserEvent = userEvent.setup();
    await view.click(dropdownButton);

    expect(screen.getByRole('radiogroup'))
      .toBeInTheDocument();

    expect(screen.getByRole('radio', {name: /SINGLE ROUTE/i}))
      .toBeInTheDocument();

    expect(screen.getByRole('radio', {name: /MULTI ROUTE/i}))
      .toBeInTheDocument();
  })

  test('it should have single route checked by default', async () => {

    const dropdownButton: HTMLButtonElement =
      screen.getByRole('button', {name: /Route Mode/i});

    const view: UserEvent = userEvent.setup();
    await view.click(dropdownButton);

    expect(screen.getByRole('radio', {name: /SINGLE ROUTE/i}))
      .toBeChecked();
  })
});

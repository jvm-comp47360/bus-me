import {act, fireEvent, render, screen, within} from '@testing-library/react'
import App from "./App";

// A mock sample output of the Bus Stops API.
const MOCK_BUS_STOPS = require('../../mockdata/MOCK_BUS_STOPS.json');

// Stores reference to global fetch function that we can restore later on.
const defaultFetch = global.fetch;

// Create mock fetch function.
beforeAll(() => {
  global.fetch = () =>
    Promise.resolve({
      json: () => Promise.resolve(MOCK_BUS_STOPS)
    });
});

// Restore global fetch function.
afterAll(() => {
  global.fetch = defaultFetch;
});

// Setup function that renders the main component.
const setup = () => render(<App/>);

// Note: Consider including some sort of loading message in this component in case the API hangs.
describe('<App/> BusStops API call', () => {

  test("Bus Stops API call should cache the data in browser", async() => {
    jest.spyOn(Storage.prototype, 'setItem');

    // This renders the component together with the mock API call.
    await act(async () => {
      setup();
    });

    expect(Storage.prototype.setItem).toBeCalledTimes(1);
  });

  test("Bus Stops API call should retrieve data from browser cache on reload", async() => {
    jest.spyOn(Storage.prototype, 'getItem');

    // We are rendering the component twice on the same Jest DOM to simulate a page refresh.
    await act(async () => {
      setup();
    });

    await act(async () => {
      setup();
      expect(Storage.prototype.getItem).toBeCalledTimes(1);
    });
  });

  // Remember to find a more elegant way to find if props have been passed as the application develops.
  test("Bus Stops API call should activate dropdown functionality", async () => {
    await act(async () => {
      setup();
    });

    const startDropdown = screen.getByTestId("start-dropdown");
    const startInput = within(startDropdown).getByRole("combobox");

    await act(() => {
      startDropdown.click();
      startDropdown.focus();
    });

    fireEvent.change(startInput, {target: {value: "Parnell"}});
    fireEvent.keyDown(startDropdown, {key: "ArrowDown"});
    fireEvent.keyDown(startDropdown, {key: "Enter"});

    expect(startInput.value).toEqual("Parnell Square West, Stop No.2");
  });
});
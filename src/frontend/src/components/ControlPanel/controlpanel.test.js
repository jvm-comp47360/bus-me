// The below stops a bug in my IDE from calling false positive on test functions.
// noinspection JSCheckFunctionSignatures

import React from 'react';
import ControlPanel from "./ControlPanel.jsx";
import {act, fireEvent, render, screen, within} from "@testing-library/react";

// A mock sample output of the Bus Stops API.
const MOCK_BUS_STOPS = require('../../mockdata/MOCK_BUS_STOPS.json');

// The setup automatically passes in the mock Bus Stops API, as we are testing the call at the App component level.
const setup = () => render(<ControlPanel busStops={MOCK_BUS_STOPS}/>);


describe('<ControlPanel/> Rendering UI elements', () => {

  test("Header should appear on the screen", () => {
    setup();

    expect(screen.getByText("Where Do You Want To Go?")).toBeInTheDocument();
  });

  test("Sub-header should appear on the screen", () => {
    setup();

    expect(screen.getByText("Select a start station and a destination station, and we will give you a realistic " +
      "estimate of how long your journey is going to take.")).toBeInTheDocument();
  });

  test("Dropdowns should appear on the screen", () => {
    setup();

    expect(screen.getByTestId("start-dropdown")).toBeInTheDocument();
    expect(screen.getByTestId("finish-dropdown")).toBeInTheDocument();
  });

  test("Submit button should appear on the screen", () => {
    setup();

    expect(screen.getByTestId("submit-button")).toBeInTheDocument();
  });
});


describe('<ControlPanel/> Functionality of Autocomplete MUI components', () => {

  test("Dropdowns should display default text", () => {
    setup();

    expect(screen.getByLabelText("Start")).toBeInTheDocument();
    expect(screen.getByLabelText("Finish")).toBeInTheDocument();
  });

  test("Dropdown should display valid option after user text input", () => {
    setup();

    const startDropdown = screen.getByTestId("start-dropdown");
    const startInput = within(startDropdown).getByRole("combobox");

    act(() => {
      startDropdown.click();
      startDropdown.focus();
    });

    fireEvent.change(startInput, {target: {value: "Parnell"}});
    fireEvent.keyDown(startDropdown, {key: "ArrowDown"});
    fireEvent.keyDown(startDropdown, {key: "Enter"});

    expect(startInput.value).toEqual("Parnell Square West, Stop No.2");
  });
});

// TODO: Test submit functionality once we begin work on this feature.
describe('<ControlPanel/> Functionality of Submit Button', () => {

  // Function that mocks typing of text into the autocomplete and selects the first option from the resulting dropdown.
  const mockSelectFromDropdown = (dropdown, entry) => {
    const startInput = within(dropdown).getByRole("combobox");

    act(() => {
      dropdown.click();
      dropdown.focus();
    });

    fireEvent.change(startInput, {target: {value: entry}});
    fireEvent.keyDown(dropdown, {key: "ArrowDown"});
    fireEvent.keyDown(dropdown, {key: "Enter"});
  };

  test("Button should be be disabled by default", () => {
    setup();

    expect(screen.getByTestId("submit-button")).toHaveClass("Mui-disabled");
  });

  test("Button should be disabled if only start dropdown value is selected", () => {
    setup();

    const startDropdown = screen.getByTestId("start-dropdown");
    mockSelectFromDropdown(startDropdown, "Parnell");

    expect(screen.getByTestId("submit-button")).toHaveClass("Mui-disabled");
  });

  test("Button should be disabled if only finish dropdown value is selected", () => {
    setup();

    const startDropdown = screen.getByTestId("finish-dropdown");
    mockSelectFromDropdown(startDropdown, "Parnell");

    expect(screen.getByTestId("submit-button")).toHaveClass("Mui-disabled");
  });

  test("Button should be enabled if both dropdown values are selected", () => {
    setup();
    const startDropdown = screen.getByTestId("start-dropdown");
    const finishDropdown = screen.getByTestId("finish-dropdown");

    mockSelectFromDropdown(startDropdown, "Parnell");
    mockSelectFromDropdown(finishDropdown, "Drumcondra");

    expect(screen.getByTestId("submit-button")).not.toHaveClass("Mui-disabled");
  });
});
import React from 'react';
import ControlPanel from "./ControlPanel.jsx";
import {act, fireEvent, render, screen, within} from "@testing-library/react";

const mockBusStops = require('../../mockdata/mockBusStops.json');

const setup = () => render(<ControlPanel busStops={mockBusStops}/>);

describe('<ControlPanel/> rendering UI elements', () => {
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

describe('<ControlPanel/> Submit Button functionality', () => {

  const mockSelectFromDropdown = (dropdown, entry) => {
    const startInput = within(dropdown).getByRole("combobox");

    act(() => {
      dropdown.click();
      dropdown.focus();
    });

    fireEvent.change(startInput, { target: { value: entry}});
    fireEvent.keyDown(dropdown, { key: "ArrowDown" });
    fireEvent.keyDown(dropdown, { key: "Enter" });
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



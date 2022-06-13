import React from 'react';
import ControlPanel from "./ControlPanel.jsx";
import {act, fireEvent, render, screen, within} from "@testing-library/react";

const mockBusStops = require('../../mockdata/mockBusStops.json');

const setup = () => render(<ControlPanel busStops={mockBusStops}/>)

describe('<ControlPanel/> rendering UI elements', () => {
  test("Header should appear on the screen", () => {
    setup()
    expect(screen.getByText("Where Do You Want To Go?")).toBeInTheDocument();
  })

  test("Sub-header should appear on the screen", () => {
    setup()
    expect(screen.getByText("Select a start station and a destination station, and we will give you a realistic " +
      "estimate of how long your journey is going to take.")).toBeInTheDocument();
  })

  test("Dropdowns should appear on the screen", () => {
    setup()
    expect(screen.getByTestId("start-dropdown")).toBeInTheDocument();
    expect(screen.getByTestId("finish-dropdown")).toBeInTheDocument();
  })

  test("Submit button should appear on the screen", () => {
    setup()
    expect(screen.getByTestId("submit-button")).toBeInTheDocument();
  })
})

describe('<ControlPanel/> Submit Button functionality', () => {
  test("Button should be be disabled by default", () => {
    setup();
    expect(screen.getByTestId("submit-button")).toHaveClass("Mui-disabled");
  })

  test("Button should be enabled if dropdown values are selected", () => {
    setup();
    const startDropdown = screen.getByTestId("start-dropdown");
    const finishDropdown = screen.getByTestId("finish-dropdown");

    const startInput = within(startDropdown).getByRole("combobox");

    act(() => {
      startDropdown.click();
      startDropdown.focus();
    })

    fireEvent.change(startInput, { target: { value: "Parnell"}});
    fireEvent.keyDown(startDropdown, { key: "ArrowDown" });
    fireEvent.keyDown(startDropdown, { key: "Enter" });

    const finishInput = within(finishDropdown).getByRole("combobox");

    act(() => {
      finishDropdown.click();
      finishDropdown.focus();
    })

    fireEvent.change(finishInput, { target: { value: "Parnell"}});
    fireEvent.keyDown(finishDropdown, { key: "ArrowDown" });
    fireEvent.keyDown(finishDropdown, { key: "ArrowDown" });
    fireEvent.keyDown(finishDropdown, { key: "Enter" });

    expect(screen.getByTestId("submit-button")).not.toHaveClass("Mui-disabled");
  })
})



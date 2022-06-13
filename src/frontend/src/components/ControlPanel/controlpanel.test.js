import React from 'react';
import ControlPanel from "./ControlPanel.jsx";
import {render, screen, within} from "@testing-library/react";

test("All UI elements should appear on the screen", () => {
  render(<ControlPanel/>)
  expect(screen.getByText("Where Do You Want To Go?")).toBeInTheDocument();
  expect(screen.getByText("Select a start station and a destination station, and we will give you a realistic " +
    "estimate of how long your journey is going to take.")).toBeInTheDocument();
  expect(screen.getByTestId("start-dropdown")).toBeInTheDocument();
  expect(screen.getByTestId("finish-dropdown")).toBeInTheDocument();
  expect(screen.getByTestId("submit-button")).toBeInTheDocument();
})

test("Button should be be disabled by default", () => {
  render(<ControlPanel/>)
  expect(screen.getByTestId("submit-button")).toHaveClass("Mui-disabled");
})

test("Dropdowns should update state", () => {
  render(<ControlPanel/>)

  const startDropdown = screen.getByTestId("start-dropdown");
  const input = within(startDropdown).Qu
  console.log(input)
  // const finishDropdown = screen.getByTestId("finish-dropdown");
  console.log(startDropdown)
  // const handleChange = jest.spyOn(startDropdown.prototype, "onChange")

})

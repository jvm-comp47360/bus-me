import ControlPanel from "./ControlPanel.jsx"
import {render, screen} from "@testing-library/react";

test("Header and sub-header should appear on the screen", () => {
  render(<ControlPanel/>)
  expect(screen.getByText("Where Do You Want To Go?")).toBeInTheDocument();
  expect(screen.getByText("Select a start station and a destination station, and we will give you a realistic " +
    "estimate of how long your journey is going to take.")).toBeInTheDocument();
})

test("Button should be rendered on the screen", () => {
  render(<ControlPanel/>)
  expect(screen.getByTestId("submit-button")).toBeInTheDocument();
})


test("Button should be be disabled by default", () => {
  render(<ControlPanel/>)
  expect(screen.getByTestId("submit-button")).toHaveClass("Mui-disabled");
})

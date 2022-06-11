import ControlPanel from "./ControlPanel.jsx"
import {render, screen} from "@testing-library/react";

test("Header should be rendered on screen", () => {
    render(<ControlPanel/>)
    expect(screen.getByText("Where Do You Want To Go?")).toBeInTheDocument()
})

test("Sub-header should be rendered on screen", () => {
    render(<ControlPanel/>)
    expect(screen.getByText("Select a start station and a destination station, and we will give you a realistic " +
        "estimate of how long your journey is going to take.")).toBeInTheDocument()
})
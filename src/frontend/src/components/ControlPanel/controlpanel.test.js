import ControlPanel from "./ControlPanel.jsx"
import {render, screen} from "@testing-library/react";

test("Header should be rendered on screen", () => {
    render(<ControlPanel/>)
    expect(screen.getByText("Where Do You Want To Go?")).toBeInTheDocument()
})
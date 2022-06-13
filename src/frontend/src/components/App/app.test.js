import { render, screen } from '@testing-library/react'
import App from "./App";

const setup = () => render(<App/>)

test("Control Panel should render on the screen", () => {
  setup();
})
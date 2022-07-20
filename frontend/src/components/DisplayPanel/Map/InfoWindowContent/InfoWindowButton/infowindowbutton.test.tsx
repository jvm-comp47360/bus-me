import {render, screen} from '@testing-library/react';
import InfoWindowButton from './InfoWindowButton';

test('"Start" passed as name prop to component', () => {
    render(<InfoWindowButton name={"Start"}/>)
    expect(screen.getByText(/start station/i)).toBeInTheDocument()
})

test('"Finish" passed as name prop to component', () => {
    render(<InfoWindowButton name={"Finish"}/>)
    expect(screen.getByText(/finish station/i)).toBeInTheDocument()
})
import {render, screen} from '@testing-library/react';
import InfoWindowButton from './InfoWindowButton';

test('"Start" passed as name prop to component', () => {
    render(<InfoWindowButton 
            name={"Start"}
            setter={jest.fn()}/>)
    expect(screen.getByText(/start station/i)).toBeInTheDocument()
})

test('"Finish" passed as name prop to component', () => {
    render(<InfoWindowButton 
            name={"Finish"}
            setter={jest.fn()}/>)
    expect(screen.getByText(/finish station/i)).toBeInTheDocument()
})
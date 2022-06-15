import Navbar from './Navbar'
import {render, screen} from '@testing-library/react';

test('BusMe appears in Navbar', () => {
    render(<Navbar />)

    expect(screen.getByRole('link', { 
        name: /BusMe/i })).toBeInTheDocument()
})
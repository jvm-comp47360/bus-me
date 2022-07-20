import {render, screen} from '@testing-library/react';
import InfoWindowButton from './InfoWindowButton';
import mockData from '../../../../../mockdata/MOCK_BUS_ROUTES.json';

const mockStop = mockData[0].bus_stops[0];

test('"Start" passed as name prop to component', () => {
    render(<InfoWindowButton 
            name={"Start"}
            setter={jest.fn()}
            stop={mockStop}/>)
    expect(screen.getByText(/start station/i)).toBeInTheDocument()
})

test('"Finish" passed as name prop to component', () => {
    render(<InfoWindowButton 
            name={"Finish"}
            setter={jest.fn()}
            stop={mockStop}/>)
    expect(screen.getByText(/finish station/i)).toBeInTheDocument()
})

test('finish station button should be disabled at outset', () => {
    render(<InfoWindowButton 
        name={"Finish"}
        setter={jest.fn()}
        stop={mockStop}
        startSelection={undefined}/>)
    expect(screen.getByRole(
        'button',
        {name: /finish station/i},
    )).toHaveClass('Mui-disabled');
})
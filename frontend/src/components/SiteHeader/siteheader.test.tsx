import SiteHeader from './SiteHeader';
import {render, RenderResult, screen} from '@testing-library/react';

test('Header shows with props passed on screen', () => {
    render(<SiteHeader title="About BusMe" />)
    expect(screen.getByText(/about/i)).toBeInTheDocument();
})

test('Header is correct MUI typography class', () => {
    const {container} = render(<SiteHeader title="About BusMe" />)
    expect(container.firstChild).toHaveClass('MuiTypography-h3')
})
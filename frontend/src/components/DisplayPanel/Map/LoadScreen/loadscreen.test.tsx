import {render, RenderResult, screen} from '@testing-library/react';
import LoadScreen from './LoadScreen';

// Setup function that renders the main component.
const setup = (open: boolean): RenderResult => render(<LoadScreen open={open}/>);

describe('<LoadScreen/> It must show loading screen if data is loading', () => {
    it('shows loading text when loading', () => {
        expect.assertions(1);
        setup(true);
        expect(screen.getByText(/loading/i)).toBeInTheDocument();
    });
    it('does not appear if data has loaded', () => {
        expect.assertions(1);
        setup(false);
        expect(screen.queryByText(/loading/i)).toBeNull();
    })
});


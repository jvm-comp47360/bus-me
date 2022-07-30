import {render, RenderResult, screen} from '@testing-library/react';
import LoadScreen from './LoadScreen';

// Setup function that renders the main component.
const setup = (): RenderResult => render(<LoadScreen isOpen={true}/>);

describe('<LoadScreen/> It must show loading screen if data is loading', () => {
    it('shows loading text when loading', () => {
        expect.assertions(1);
        setup();
        expect(screen.getByText(/loading/i)).toBeInTheDocument();
    });
});


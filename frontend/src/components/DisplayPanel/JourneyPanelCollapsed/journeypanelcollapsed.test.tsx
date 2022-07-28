import {render, RenderResult, screen} from '@testing-library/react';
import JourneyPanelCollapsed from './JourneyPanelCollapsed';

const setUp = (): RenderResult => render(<JourneyPanelCollapsed />);

test('Collapsed title renders', () => {
    setUp();
    expect(screen.getByText(/Your Journey/)).toBeInTheDocument();
})

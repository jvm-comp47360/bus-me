import AnalyticsPanel from './AnalyticsPanel';
import {render, RenderResult, screen} from '@testing-library/react';

const setUp = ():RenderResult => render(<AnalyticsPanel />);

test('Paragraph renders', () => {
    setUp()
    expect(screen.getByText(/Plan your day better/i)).toBeInTheDocument();
})

test('Journey Times Button renders', () => {
    setUp();
    expect(screen.getByText(/Journey Times/i)).toBeInTheDocument();
})
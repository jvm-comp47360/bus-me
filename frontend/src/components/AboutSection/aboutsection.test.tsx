import AboutSection from './AboutSection';
import {render, RenderResult, screen} from '@testing-library/react';

const setUp = (): RenderResult => render(<AboutSection />);

test('SiteHeader with correct props renders', () => {
    setUp();
    expect(screen.getByText(/about busme/i)).toBeInTheDocument();
});

test('BusMe logo present in About section', () => {
    setUp();
    expect(screen.getByAltText('bus-me-logo')).toBeInTheDocument();
});

test('BusMe content present in About section', () => {
    setUp();
    expect(screen.getByText(/The BusMe journey planner/i)).toBeInTheDocument();
});
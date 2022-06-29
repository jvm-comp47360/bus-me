import ContactSection from './ContactSection';
import {render, RenderResult, screen} from '@testing-library/react';

const setUp = (): RenderResult => render(<ContactSection />);

test('SectionHeader with correct props renders', () => {
    setUp();
    expect(screen.getByText(/contact us/i)).toBeInTheDocument();
})

test('Content for contact section renders', () => {
    setUp();
    expect(screen.getByText(/Get in touch with BusMe using the form below/i)).toBeInTheDocument();
})
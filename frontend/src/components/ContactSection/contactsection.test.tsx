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

test('Message input renders on the page', () => {
    setUp();
    expect(screen.getByRole('textbox', {
        name: /message/i
    })).toBeInTheDocument();
})

test('Email input renders on the page', () => {
    setUp();
    expect(screen.getByRole('textbox', {
        name: /email/i
    })).toBeInTheDocument();
})

test('Name input renders on the page', () => {
    setUp();
    expect(screen.getByRole('textbox', {
        name: /name/i
    })).toBeInTheDocument();
})

test('Submit button renders on the page', () => {
    setUp();
    expect(screen.getByRole('button', {
        name: /send/i
    })).toBeInTheDocument();
})
import {render, RenderResult, screen} from '@testing-library/react';
import InfoWindowContent from './InfoWindowContent';

const setUp = (): RenderResult => render(
    <InfoWindowContent />
)

test('name of station appears', () => {
    setUp()
    expect(screen.getByText(/ucd belfield/i)).toBeInTheDocument();
})

test('number of station appears', () => {
    setUp()
    expect(screen.getByText(/stop 768/i)).toBeInTheDocument();
})

test('start station button appears', () => {
    setUp()
    expect(screen.getByRole('button', {
        name: /start station/i
    })).toBeInTheDocument()
})

test('finish station button appears', () => {
    setUp()
    expect(screen.getByRole('button', {
        name: /finish station/i
    })).toBeInTheDocument()
})
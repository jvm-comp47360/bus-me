import Navbar from './Navbar'
import {render, screen} from '@testing-library/react';

beforeEach(() => {
    render(<Navbar />)
})

test('BusMe appears in Navbar', () => {
    expect(screen.getByRole('link', { 
        name: /BusMe/i })).toBeInTheDocument()
})

describe('Nav menu items appear on page', () => {
    test('Contact button appears', () => {
        expect(screen.getByRole('button', { 
            name: /contact/i })).toBeInTheDocument()
    })
    test('App button appears', () => {
        expect(screen.getByRole('button', { 
            name: /app/i })).toBeInTheDocument()
    })
    test('About button appears', () => {
        expect(screen.getByRole('button', { 
            name: /about/i })).toBeInTheDocument()
    })
    test('Login button appears', () => {
        expect(screen.getByRole('button', { 
            name: /login/i })).toBeInTheDocument()
    })
    
})
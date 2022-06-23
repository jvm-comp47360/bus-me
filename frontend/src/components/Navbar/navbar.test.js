import Navbar from './Navbar'
import {render, screen} from '@testing-library/react';

beforeEach(() => {
    // eslint-disable-next-line testing-library/no-render-in-setup
    render(<Navbar />)
})

test('BusMe logo appears in Navbar', () => {
    expect(screen.getByAltText('bus-me-logo')).toBeInTheDocument()
})

describe('Nav menu items appear on page', () => {
    const sitePages = ['Contact', 'App', 'About', 'Login'];
    sitePages.forEach(page => {
        const pageRe = new RegExp(page, "i");
        test(`${page} button appears`, () => {
            expect(screen.getByRole('button', { 
                name: pageRe })).toBeInTheDocument()
        })
    })
})
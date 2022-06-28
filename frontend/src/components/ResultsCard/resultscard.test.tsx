import ResultsCard from './ResultsCard';
import {render, RenderResult, screen} from '@testing-library/react';

const happyPathDuration: number = 35;
const setUp = (): RenderResult => render(<ResultsCard duration={happyPathDuration} />);

test('Seed phrase shows on screen', () => {
  setUp();
  expect(screen.getByText(/your journey will take approx./i))
      .toBeInTheDocument();
});

test('Close button shows on screen', () => {
  setUp();
  expect(screen.getByRole('button', {
    name: /close/i,
  })).toBeInTheDocument();
});

test('Card w/ duration >1 minute renders', () => {
  setUp();
  const timePhraseRe: RegExp = new RegExp(`${happyPathDuration} minutes`, 'i');
  expect(screen.getByText(timePhraseRe)).toBeInTheDocument();
});

test('Card w/ duration of 1 minute renders', () => {
  render(<ResultsCard duration={1} />);
  expect(screen.getByText('1 Minute')).toBeInTheDocument();
});
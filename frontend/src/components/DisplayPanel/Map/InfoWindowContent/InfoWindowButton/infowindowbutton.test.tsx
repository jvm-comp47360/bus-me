import {render, screen} from '@testing-library/react';
import InfoWindowButton from './InfoWindowButton';
import mockData from '../../../../../mockdata/MOCK_BUS_ROUTES.json';

const mockStop = mockData[0].bus_stops[0];

test('"Start" passed as name prop to component', () => {
  render(<InfoWindowButton
    name={'Start'}
    setStopSelection={jest.fn()}
    stop={mockStop}
    existingSelection={undefined}
    routeSelection={mockData[0]}
    setSelectedMarker={jest.fn()}
    multiRoute={false}/>);
  expect(screen.getByText(/start station/i)).toBeInTheDocument();
});

test('"Finish" passed as name prop to component', () => {
  render(<InfoWindowButton
    name={'Finish'}
    setStopSelection={jest.fn()}
    stop={mockStop}
    existingSelection={undefined}
    routeSelection={mockData[0]}
    setSelectedMarker={jest.fn()}
    multiRoute={false}/>);
  expect(screen.getByText(/finish station/i)).toBeInTheDocument();
});

test('finish station button should be disabled at outset', () => {
  render(<InfoWindowButton
    name={'Finish'}
    setStopSelection={jest.fn()}
    stop={mockStop}
    existingSelection={undefined}
    routeSelection={mockData[0]}
    setSelectedMarker={jest.fn()}
    multiRoute={false}/>);
  expect(screen.getByRole(
      'button',
      {name: /finish station/i},
  )).toHaveClass('Mui-disabled');
});

test(
    'finish station button should be disabled if stop and selection the same',
    () => {
      render(<InfoWindowButton
        name={'Finish'}
        setStopSelection={jest.fn()}
        stop={mockStop}
        existingSelection={mockStop}
        routeSelection={mockData[0]}
        setSelectedMarker={jest.fn()}
        multiRoute={false}/>);
      expect(screen.getByRole(
          'button',
          {name: /finish station/i},
      )).toHaveClass('Mui-disabled');
    });

test(
    'start station button should be disabled if stop and selection the same',
    () => {
      render(<InfoWindowButton
        name={'Start'}
        setStopSelection={jest.fn()}
        stop={mockStop}
        existingSelection={mockStop}
        routeSelection={mockData[0]}
        setSelectedMarker={jest.fn()}
        multiRoute={false}/>);
      expect(screen.getByRole(
          'button',
          {name: /start station/i},
      )).toHaveClass('Mui-disabled');
    });

test('start station button should be disabled if no route is selected', () => {
  render(<InfoWindowButton
    name={'Start'}
    setStopSelection={jest.fn()}
    stop={mockStop}
    existingSelection={mockStop}
    routeSelection={undefined}
    setSelectedMarker={jest.fn()}
    multiRoute={false}/>);
  expect(screen.getByRole(
      'button',
      {name: /start station/i},
  )).toHaveClass('Mui-disabled');
});

test(
    'start button should be enabled in multiroute mode without routeSelection',
    () => {
      render(<InfoWindowButton
        name={'Start'}
        setStopSelection={jest.fn()}
        stop={mockStop}
        existingSelection={mockStop}
        routeSelection={undefined}
        setSelectedMarker={jest.fn()}
        multiRoute={true}/>);
      expect(screen.getByRole(
          'button',
          {name: /start station/i},
      )).not.toHaveClass('Mui-disabled');
    });

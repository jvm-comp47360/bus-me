import WeatherCardInfoItem from './WeatherCardInfoItem';
import {render, screen} from '@testing-library/react';
import {AiFillCalendar} from 'react-icons/ai';

const ICON = <AiFillCalendar color={'#FFFFFF'}/>;
const TEXT = 'Temperature';

const setup = () => render(
    <WeatherCardInfoItem icon={ICON} text={TEXT}/>,
);

describe('<WeatherCardInfoItem/> UI elements', () => {
  it('must show an icon', () => {
    expect.assertions(1);
    setup();
    expect(screen.getByRole('svg')).toBeInTheDocument();
  });
  it('must show the correct text', () => {
    expect.assertions(1);
    setup();
    expect(screen.getByText(TEXT)).toBeInTheDocument();
  });
});

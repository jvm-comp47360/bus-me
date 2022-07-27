import WeatherCardInfoItem from './WeatherCardInfoItem';
import {render, RenderResult, screen} from '@testing-library/react';
import BookIcon from '@mui/icons-material/Book';

const ICON: JSX.Element = <BookIcon sx={{color: '#FFFFFF'}}/>;
const TEXT = 'Sunny';

const setup = (): RenderResult => render(
    <WeatherCardInfoItem icon={ICON} text={TEXT}/>,
);

// Note: MUI docs suggest using their in-built data test id
// to test icons: https://mui.com/material-ui/icons/#testing
describe('<WeatherCardInfoItem/> UI elements', () => {
  it.skip('must show the correct icon', () => {
    expect.assertions(1);
    setup();
    expect(screen.getByTestId('BookIcon')).toBeInTheDocument();
  });

  it.skip('must show the correct text', () => {
    expect.assertions(1);
    setup();
    expect(screen.getByText(TEXT)).toBeInTheDocument();
  });
});

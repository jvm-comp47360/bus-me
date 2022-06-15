import React from 'react';
import {Divider, Stack} from '@mui/material';
import PropTypes from 'prop-types';
import WeatherContent from './WeatherContent/WeatherContent';


const WeatherCard = ({weather}) => {
  return <Stack direction={'row'}>
    <Divider orientation={'vertical'}/>
    {weather.map((day) => {
      return (<React.Fragment key={day.date}>
        <WeatherContent
          icon={day.icon}
          date={day.date}
        />
        <Divider
          orientation={'vertical'}
          sx={{padding: 0.1}}
        />
      </React.Fragment>);
    })}
  </Stack>;
};

export default WeatherCard;

WeatherCard.propTypes = {
  weather: PropTypes.arrayOf(PropTypes.object),
};

import React from 'react';
import {Divider, Stack} from '@mui/material';
import PropTypes from 'prop-types';
import WeatherCard from './WeatherCard/WeatherCard';

const WeatherContainer = ({weather}) => {
  return <Stack direction={'row'}>
    <Divider orientation={'vertical'}/>
    {weather.map((day) => {
      return (<React.Fragment key={day.date}>
        <WeatherCard
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

export default WeatherContainer;

WeatherContainer.propTypes = {
  weather: PropTypes.arrayOf(PropTypes.object),
};

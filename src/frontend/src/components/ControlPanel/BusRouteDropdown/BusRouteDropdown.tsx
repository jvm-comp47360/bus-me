import {Autocomplete, TextField} from '@mui/material';
import {FC, ReactElement} from 'react';

export type Props = {
  busRoutes: string[];
};

const BusRouteDropdown: FC<Props> = ({busRoutes}): ReactElement => {
  return <>
    <Autocomplete
      options={busRoutes}
      sx={{width: 300}}
      renderInput={(params) => <TextField {...params} label={'Select Route'}/>}
    />
  </>;
};

export default BusRouteDropdown;

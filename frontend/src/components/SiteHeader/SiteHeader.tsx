import {Typography} from '@mui/material';

interface Props {
  title: string;
}

const SiteHeader = ({title}: Props): JSX.Element => {
  return <Typography
    variant='h3'
    sx={{
      'textAlign': 'center',
      'my': 2,
    }}>
    {title}
  </Typography>;
};

export default SiteHeader;

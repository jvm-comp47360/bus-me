import {Typography} from '@mui/material';

interface Props {
  title: string;
}

const SectionHeader = ({title}: Props): JSX.Element => {
  return <Typography
    variant='h3'
    sx={{
      'textAlign': 'center',
      'my': 2,
    }}>
    {title}
  </Typography>;
};

export default SectionHeader;

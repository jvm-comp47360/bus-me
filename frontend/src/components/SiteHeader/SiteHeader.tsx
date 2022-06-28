import {Typography} from '@mui/material';

interface Props {
  title: string;
}

const SiteHeader = ({title}: Props): JSX.Element => {
  return <Typography variant='h2'>{title}</Typography>;
}

export default SiteHeader;

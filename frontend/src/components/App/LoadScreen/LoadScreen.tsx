// React
import React from 'react';
import {Box, CircularProgress, Dialog, DialogTitle, Typography} from "@mui/material";

interface Props {
    open: boolean;
}

const LoadScreen = ({open}: Props): JSX.Element => {


    return <>
        <Dialog open={open}>
            <Box
                display={'flex'}
                flexDirection={'column'}
                flexWrap={'wrap'}
                justifyContent={'center'}
                margin={1}
            >
                <DialogTitle>
                    <CircularProgress/>
                </DialogTitle>
                <Typography sx={{alignSelf: 'center'}}>Loading...</Typography>
                </Box>
        </Dialog>
    </>;
};

export default LoadScreen;

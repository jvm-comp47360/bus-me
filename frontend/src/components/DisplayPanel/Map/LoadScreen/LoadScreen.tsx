// React
import React from 'react';
import {Box, CircularProgress, Dialog, DialogTitle, Typography} from "@mui/material";

const LoadScreen = (): JSX.Element => {
    return <>
        <Dialog open={true}>
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

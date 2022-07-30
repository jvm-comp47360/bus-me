// React
import React, {Dispatch, SetStateAction} from 'react';
import {Box, CircularProgress, Dialog, DialogTitle, Typography} from "@mui/material";
import BusStop from "../../../../types/BusStop";
import BusRoute from "../../../../types/BusRoute";

interface Props {
    isOpen: boolean,
}

const LoadScreen = ({isOpen}: Props): JSX.Element => {
    return <>
        <Dialog open={isOpen}>
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

// React
import React, {Dispatch, SetStateAction} from 'react';

// Material UI
import {TextField, TextFieldProps}
    from '@mui/material';

// Props
import {DateTimePicker} from "@mui/x-date-pickers";

interface Props {
    dateTimeSelection: Date | undefined;
    setDateTimeSelection: Dispatch<SetStateAction<Date | undefined>>;
}

const DateTimeSelection = ({
                               dateTimeSelection,
                               setDateTimeSelection,
                         }: Props): JSX.Element => {

    // DateTime helper functions
    const dateTimeChangeHandler = (selectedDateTime: Date | null) => {
        if (selectedDateTime) {
            setDateTimeSelection(selectedDateTime);
        }
    };

    return <>
        <DateTimePicker
            onChange={dateTimeChangeHandler}
            aria-label={"date-time-selector"}
            value={dateTimeSelection}
            inputFormat={'dd/MM/yyyy HH:mm aaa'}
            renderInput={(params: TextFieldProps) => <TextField {...params} sx={{backgroundColor: 'white'}}/>}
        />
    </>;
};

export default DateTimeSelection;

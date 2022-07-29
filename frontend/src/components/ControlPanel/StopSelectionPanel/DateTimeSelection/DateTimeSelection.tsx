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
            value={dateTimeSelection}
            inputFormat={'dd/MM/yyyy HH:MM aaa'}
            renderInput={(params: TextFieldProps) => <TextField {...params} />}
        />
    </>;
};

export default DateTimeSelection;

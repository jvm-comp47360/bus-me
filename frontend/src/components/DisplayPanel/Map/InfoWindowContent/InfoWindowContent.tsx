import {Box,Grid,Typography} from '@mui/material';
import InfoWindowButton from './InfoWindowButton/InfoWindowButton';
import {Dispatch, SetStateAction} from 'react';
import BusStop from '../../../../types/BusStop';
import BusRoute from '../../../../types/BusRoute';
import RouteInfo from '../../../../types/RouteInfo';

interface Props {
    stop: BusStop,
    setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>
    startSelection: BusStop | undefined,
    finishSelection: BusStop | undefined,
    setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>
    busRoutes: BusRoute[];
}

const InfoWindowContent =({
    stop, 
    setStartSelection, 
    startSelection, 
    finishSelection,
    setFinishSelection,
    busRoutes
}:Props): JSX.Element => {
    const routeStops: RouteInfo[] = (stop.bus_routes) ? stop.bus_routes : [];
    const overflowYValue = (routeStops.length > 3) ? 'scroll': 'inherit';
    
    const getRouteDescription = (route: string, terminus: string): string => `${route} to ${terminus}`;

    const getBackgroundColour = (stopIndex: number): string => {
        const colourArray: string[] = ["red", "orange", "blue", "violet", "green"];
        const modValue: number = stopIndex % colourArray.length;
        return colourArray[modValue]
    }

    const mapBusRoutes = (
        busRoute: RouteInfo
        ): {"name": string, "terminus": string}  => {
        const getRouteTerminus = (id: string): string => {
            let routeTerminus: string = "";
            busRoutes.forEach(route => {
                if (route.id === id) {
                    const routeStops: BusStop[] = route.bus_stops;
                    routeTerminus = routeStops[routeStops.length -1].name;
                }
            })
            return routeTerminus;
        }
        const busRouteName: string = busRoute.name;
        const busRouteId: string = busRoute.id;
        const busRouteTerminus: string = getRouteTerminus(busRouteId);
        return {name: busRouteName, terminus: busRouteTerminus}
    }

    const busRoutesInfo: {"name": string, "terminus": string}[] | undefined = routeStops.map(mapBusRoutes);
    
    return (
    <Grid 
        container
        direction={'column'}
        sx={{
            width: '175px',
            justifyContent: 'space-between',
        }}>
        <Grid item sx={{mb: '4px'}}>
            <Typography 
                sx={{
                fontSize: '0.75rem',
                textAlign: 'right'
            }}>
                Stop {stop.number}
            </Typography>
            <Typography 
                sx={{
                borderBottom: 1,
                fontSize: '1rem',
                textAlign: 'center',
            }}>
                {stop.name}
            </Typography>
        </Grid>
        <Grid item sx={{minHeight: '75px'}}>
            <Box sx={{
                overflowY: overflowYValue, 
                maxHeight: '100px'
            }}>
                {(busRoutesInfo) ?
                busRoutesInfo.map(route => (
                    <Typography sx={{
                        color: 'white',
                        fontSize: '0.9rem', 
                        border: 1, 
                        p: '2px',
                        borderRadius: '3px',
                        mb: '2px',
                        backgroundColor: getBackgroundColour(busRoutesInfo.indexOf(route)),
                    }}>{getRouteDescription(route.name, route.terminus)}</Typography>
                )): null}
            </Box>
        </Grid>
        <Grid 
            item 
            container
            sx={{
                justifyContent: 'space-evenly',
                alignItems: 'center',
                flexDirection: 'column',
                borderTop: 1,
                p: '4px',
                mt: '4px',
            }}>
            <Grid item sx={{p: '2px'}}>
                <InfoWindowButton 
                    name={"Start"}
                    setStopSelection={setStartSelection}
                    stop={stop}
                    existingSelection={finishSelection}
                    />
            </Grid>
            <Grid item sx={{p: '2px'}}>
                <InfoWindowButton 
                    name={"Finish"}
                    setStopSelection={setFinishSelection}
                    stop={stop}
                    existingSelection={startSelection}/>
            </Grid>
        </Grid>
    </Grid>
    )
}

export default InfoWindowContent;
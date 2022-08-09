import {Box,Grid,Typography} from '@mui/material';
import InfoWindowButton from './InfoWindowButton/InfoWindowButton';
import React, {Dispatch, SetStateAction} from 'react';
import BusStop from '../../../../types/BusStop';
import BusRoute from '../../../../types/BusRoute';
import RouteInfo from '../../../../types/RouteInfo';

interface Props {
    stop: BusStop;
    startSelection: BusStop | undefined;
    finishSelection: BusStop | undefined;
    busRoutes: BusRoute[];
    busStops?: BusStop[];
    setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
    setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
    setRouteSelection: Dispatch<SetStateAction<BusRoute | undefined>>;
    multiRoute: boolean
}

type RouteTerminus = {
    name: string; 
    terminus: string;
    id: string;
}

const InfoWindowContent =({
    stop, 
    setStartSelection, 
    startSelection, 
    finishSelection,
    setFinishSelection,
    setRouteSelection,
    busRoutes,
    busStops,
    multiRoute,
}:Props): JSX.Element => {    
    const getBusRoutesFromStop = (stop: BusStop, busStops: BusStop[]): RouteInfo[] => {
        for (let i = 0; i < busStops.length; i++) {
            if (busStops[i]?.bus_routes && stop.number === busStops[i].number) {
                // @ts-ignore
                return busStops[i].bus_routes;
            }
        }
        return [];
    }
    
    const getRouteDescription = (route: string, terminus: string): string => `${route} to ${terminus}`;

    const getBackgroundColour = (stopIndex: number): string => {
        const colourArray: string[] = ["red", "orange", "blue", "violet", "green"];
        const modValue: number = stopIndex % colourArray.length;
        return colourArray[modValue]
    }

    // Source: https://stackoverflow.com/questions/2802341/javascript-natural-sort-of-alphanumerical-strings
    const sortRoutes = (routes: RouteTerminus[]): RouteTerminus[] => {
        return routes.sort((a: RouteTerminus, b: RouteTerminus) => {
            return a.name.localeCompare(b.name, undefined, {
                numeric: true,
                sensitivity: 'base'
            });
        });
     };

    const mapBusRoutes = (
        busRoute: RouteInfo
        ): RouteTerminus => {
        const busRouteName: string = busRoute.name.split(" ")[0];
        const busRouteId: string = busRoute.id;
        const busRouteTerminus: string = busRoute.name.substring(busRoute.name.indexOf(" ") + 1);
        return {
            name: busRouteName, 
            terminus: busRouteTerminus,
            id: busRouteId,
        }
    }

    const routeClickHandler = (e: React.MouseEvent) => {
        if (multiRoute) return;
        const routeId = (e.target as HTMLElement).id;
        for (let i = 0; i < busRoutes.length; i++) {
            if (routeId === busRoutes[i].id) setRouteSelection(busRoutes[i])
        }
    }

    const routeStops: RouteInfo[] = (busStops) ? 
                                    getBusRoutesFromStop(stop, busStops) :
                                    (stop.bus_routes) ?
                                    stop.bus_routes : 
                                    [];
    const overflowYValue = (routeStops.length > 3) ? 'scroll': 'inherit';
    const routeTerminusInfo: RouteTerminus[] | undefined = sortRoutes(routeStops.map(mapBusRoutes));
    
    return (
    <Grid 
        container
        direction={'column'}
        sx={{
            width: '200px',
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
                {(routeTerminusInfo) ?
                routeTerminusInfo.map(route => (
                    <Typography 
                        id={route.id}
                        onClick={routeClickHandler}
                        sx={{
                            color: 'white',
                            fontSize: '0.9rem', 
                            border: 1, 
                            p: '2px',
                            borderRadius: '3px',
                            mb: '2px',
                            backgroundColor: getBackgroundColour(routeTerminusInfo.indexOf(route)),
                        }}>`${route.name} ${route.terminus}`</Typography>
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
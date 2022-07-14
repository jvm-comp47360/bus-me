// import {render, RenderResult, screen} from '@testing-library/react';
//
// import MOCK_WEATHER_DATA from '../../mockdata/MOCK_WEATHER.json';
// import Weather from '../../types/Weather';
// import DisplayPanel from "./DisplayPanel";
//
// const MOCK_WEATHER_API: Weather = MOCK_WEATHER_DATA[0];
// const ICON: string = MOCK_WEATHER_API['icon'];
// const DATE: string = MOCK_WEATHER_API['date'];
// const WEATHERTEXT: string = MOCK_WEATHER_API['weatherText'];
// const TEMPERATURE: string = MOCK_WEATHER_API['temperature'];
//
// import {enableFetchMocks} from 'jest-fetch-mock';
//
// enableFetchMocks();
//
// const setup = (): RenderResult => render(
//   <DisplayPanel
//     prediction={undefined}
//     startSelection={undefined}
//     finishSelection={undefined}
//     setPrediction={jest.fn()}
//   />
// );
//
// describe('<DisplayPanel/> API call functionality', () => {
//   beforeEach(() => {
//     fetchMock.resetMocks();
//   })
//
//   it('must show the Weather card if API call is successful', () => {
//     expect.assertions(3);
//
//     fetchMock.mockResponseOnce(JSON.stringify(MOCK_WEATHER_DATA))
//
//     setup();
//
//     expect(screen.getByText(DATE)).toBeInTheDocument();
//     expect(screen.getByText(WEATHERTEXT)).toBeInTheDocument();
//     expect(screen.getByText(`${TEMPERATURE}°C`)).toBeInTheDocument();
//   });
// });

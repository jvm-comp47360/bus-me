import {render, RenderResult, screen} from '@testing-library/react';
import ErrorMessage from './ErrorMessage';

const errorMessage = 'An error has occured';

const setup = (errorHasOccured: boolean): RenderResult => render(
  <ErrorMessage
    errorHasOccured={errorHasOccured}
    setErrorHasOccured={jest.fn()}
    errorMessage={errorMessage}
  />
);

describe('<ErrorMessage/> Renders UI components on the screen', () => {
  it('should show the error message on the screen if error has occured', () => {
    setup(true);
    expect(screen.getByText(errorMessage)).toBeInTheDocument();
  });
  it('should not show the error message on the screen if error has not occured', () => {
    setup(false);
    expect(screen.queryByText(errorMessage)).toBeNull();
  });
});


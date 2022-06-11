# BusMe Development ReadMe

## Dependencies

Please ensure that you have all the latest dependencies to run this project. To do so, run the following command while in this directory to create a conda environment with the relevant libraries:

`conda create --name busme --file requirements.txt`

## Database Environment Details

It would be very helpful if every team member set up their local Postgres installation with the following environment variables:

* BUSME_USER
* BUSME_PASSWORD
* BUSME_HOST
* BUSME_PORT

At the moment, the database settings have been commented out in Django to give everyone time to configure their local database install, but note that once we get further into the development process Django will not start on machines that do not have the above environment details configured, so it would be helpful if this was done over the course of the first week.

## Where are the frontend files? 

The frontend consists of a React app that is located in:

`./src/frontend`

All commands, such as those relating to starting the development server, testing and building the application have not been changed. The development server will run on "localhost:3000". To see what these changes will look like on the Django server, please see below.

## What should I do before running the Django server if I want to see changes made to the frontend? 

1. Build the React application while in the `./src/frontend` directory by running `npm run build`. Note that Django only reads files from a fully compiled React app, so you should always build the applicaton before trying to start the Django server (otherwise the changes will not show up).

2. Move back to the `./src` folder and run `python manage.py runserver`. This will start Django. Django has already been configured to read the React application, so provided that there have been no compilation errors, the application show up on the Django server at `localhost:8000`.

As this is quite a repetitive task I will check to see if this can be implemented as a GitHub hook once a team member pulls from a branch that has changes in the frontend.


## How do I create a replica of the Bus Stops table in my database?

After migrating all the changes as described in the Django guide on Discord, enter the Django src directory and run `python manage.py runscript load`. The script itself is located in `src/scripts/load.py`.

Note that if you are planning on running the script for a second time for whatever reason, you should uncomment the marked line in the script so that your existing table is destroyed. This way there won't be any issues with duplicate entries.

The data was taken from the National Transport Authority API zip, and I created a short Python script in ./database that transformed the data a little to fit better in Postgres, and also converted it to .csv.

Of course, if we get different bus station data later on we can easily swap that in instead.

**END**
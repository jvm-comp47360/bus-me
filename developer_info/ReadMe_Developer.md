# **BusMe! - Developer Readme**  
This Readme contains technical information for users that wish to either:
* install the application to run locally; or
* set up a development environment on their local machines in order to make code contributions.
## **How do I run BusMe on my local machine?**  
---  

BusMe is structured as packaged as a series of Docker images, meaning that launching the application locally is quite a straightforward process. There are, however, a few steps that need to be taken before this can be done.
### **1. Docker Installation**  
---

As mentioned above, the application runs on Docker, and as such, a Docker engine installation is required. The below commands have been provided for convenience to install the application on a Linux machine.
  
`sudo apt-get update`  
`sudo apt-get install -y curl`  
`curl -fsSL https://get.docker.com -o get-docker.sh`  
`sudo sh get-docker.sh`  

The installation can be checked by running the following commands.

`sudo docker run hello-world`  
or  
`docker --version`  

For more details, or for instructions on running BusMe on other operating systems, please see the official documentation for Docker installation: [https://docs.docker.com/engine/install/ubuntu/](https://docs.docker.com/engine/install/ubuntu/)  

### **2. Cloning the Repository** 
---

The code must be copied to a user's local machine before it can be run. Please enter the following command to clone the entirety of this repository:

`git clone https://github.com/jvm-comp47360/bus-me.git`  

It's recommended to  `mkdir new_folder` for the storage of codes. Git installation can follow the link: [https://git-scm.com/book/en/v2/Getting-Started-Installing-Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)  

### **3. Environment Variables**  
---

For security purposes, BusMe uses some environment variables that need to be manually added to the code before it can be run. These are as follows:

* BUSME_USER=postgres
* BUSME_PASSWORD=postgres
* BUSME_HOST=database
* BUSME_PORT=5432
* DJANGO_ALLOWED_HOSTS=app localhost 127.0.0.1 [::1]
* SECRET_KEY
* REACT_APP_GOOGLE_KEY
* GOOGLE_DIRECTION_API_KEY
* OpenWeatherAPI_KEY  

The _BUSME_ prefix variables are properties of the Postgres database. If running the application through Docker, these need to be set to the standard values as set out above. If working locally, please ensure that these values are set to the values of your local Postgres database installation.

_DJANGO_ALLOWED_HOSTS_ and _SECRET_KEY_ are variables used by Django in `backend/settings.py`. _DJANGO_ALLOWED_HOSTS_ is a list of strings representing the host/domain names that this Django site can serve. _SECRET_KEY_ is a secret key for a particular Django installation - please get in touch with us if you would like to install the project and we will provide you with a copy. If starting a new Django project, please make sure to update _SECRET_KEY_ value. More details can be found in the Django official documentation:  
[https://docs.djangoproject.com/en/dev/ref/settings/#allowed-hosts](https://docs.djangoproject.com/en/dev/ref/settings/#allowed-hosts)  
[https://docs.djangoproject.com/en/dev/ref/settings/#secret-key](https://docs.djangoproject.com/en/dev/ref/settings/#secret-key)

The Google Key is for authenticating the Google API this application adopted. Please make sure to obtain your own Google API key before using the application. For more details on: [https://console.cloud.google.com/](https://console.cloud.google.com/)

OpenWeatherAPI_KEY is for authenticating openweather api, which is used for weather forecasts. As with the Google Key, please ensure that you create and your own API key at the following link: [https://openweathermap.org/](https://openweathermap.org/)  

### **4. Pickle Files**
---

The predictive models used by the application are stored in Pickle files. Please note that the information stored in these files is strictly confidential, and as such, permission must be obtained from the UCD School of Computer Science before these can be transferred to any local machine. 

If such permission has been obtained, together with access to the remote server where they are stored, please run the follow command to move models to your local machine.  

`cd backend/prediction/`  
`mkdir Models`  
`scp -r team1@telemachus.ucd.ie:~/data_analysis/trip_model/choose_model backend/prediction/Models`  
`cd -`  
`mkdir search_file`  
`scp team1@telemachus.ucd.ie:~/data_analysis/trip_model/classifier.pkl backend/prediction/search_file`  
`scp team1@telemachus.ucd.ie:~/data_analysis/search_table/search_table.pkl backend/prediction/search_file`  

### **4. Start the Application**
---

In order to start the application, please navigate to the root directory and activate the following command:  
`sudo docker-compose up –-build `  
If you would like to make any changes to the application, please make sure to spin down currently running containersby using the following command:   
`sudo docker-compose down`  
After the change has been made, the containers can be restarted using the aforementioned `--build` command.

## **I would like to make a code contribution to this project. How do I set up my local development environment?**  
---  

The BusMe! development team welcomes any contributions to this project. In order to set up a local development environment, steps 2, 3 and 4 in the section above need to be completed. After this is done, instructions will differ slightly depending on whether or not the code contribution relates to frontend development or backend development.

### **Frontend**  
---  

In order to set up the installation environment for frontend, please complete the following steps:

1. Ensure that Node has been set up on your system. Instructions can be found here: [https://nodejs.org/en/download/](https://nodejs.org/en/download/).
2. Navigate into the `frontend` directory of the project. 
3. Run `npm install` to install all related dependencies. 
4. To run the development server, run `npm start`.   

### **Backend**  
---  

In order to set up the installation environment for backend, please complete the following steps:

1. Ensure that postgres is installed on your local machine. For installation and initialization, please follow the official documentation, which can be found here: [https://www.postgresql.org/download/](https://www.postgresql.org/download/)
2. Ensure that Python is installed on your local machine. For installation and initialization, please follow the official documentation, which can be found here: [https://www.python.org/downloads/](https://www.python.org/downloads/)
3. Navigate into the `backend` directory of the project.
4. Install all Python dependencies by running `pip install -r requirements.txt` 
5. Fill your local database with the following commands:

`python manage.py makemigrations`  
`python manage.py migrate`  
`python manage.py runscript load`   

6. To run the development server, run `python manage.py runserver`.

## **How does BusMe work?**  
---
BusMe is a web application which creates journey time predictions by using machine learning models. React is used for the frontend UI design, Django is used for the backend and Postgres for data storage. Machine learning models are trained by using past data provided by UCD. Users enter their trip data which include start stops, finish stops, route and times. This data is sent to the backend Django prediction API, after which the prediction results will be serialized in json format and displayed by the frontend. 
## **What technologies does BusMe use?**  
---
- **React**: ReactJS is used to build the frontend, as well as integrate with Google Maps API and the backend. 
- **Material UI**: This is a React library that provides a high quality UX by implementing Google Material Design philosophy.  
- **Typescript**: The main language is used in the frontend. Due to the scope of the project, it was chosen over JavaScript due to its type safety feature, which was helpful during development to spot bugs at compile time.
- **Django**: A backend framework chosen due to the fact that it is written in Python, so that it can easily integrate with the machine learning models (also written in Python). 
- **PostgreSQL**: Used for data storage.
- **Python** : The main language is used in the backend, as the framework chosen is Django.
- **Python Libraries**: For data analytics, Pandas and Numpy are used for data processing, and sklearn is used for modelling. 
- **Nginx**: Uses as server and reverse proxy.
- **Docker**: Allows for quick deployment and portability.

For more information, please see Chapter 4 of the Project Report, which can be provided upon request.  

**END**


# **BusMe! - A Dublin Bus Journey Planner!**  
BusMe is a web design application mainly written by typescript and python. There will be a description of how a developer can install and test it and the technic it uses.

## **How to install BusMe on your machine?**  
---  

**Installation Requirments**  
Present app deploy conditions:
- OS: Ubuntu Server 20.04
- Core: 4
- Memory: 2GB
- Disk: 20GB  

### **Preperation**
---
#### **1. Docker Installation**  
This application is separated by docker engine to frontend, backend and database. A docker engine installation is required. It offers a convenience script to do this.
  
`sudo apt-get update`  
`sudo apt-get install -y curl`  
`curl -fsSL https://get.docker.com -o get-docker.sh`  
`sudo sh get-docker.sh`  

Once you enter these commands in your terminal. Check the succeful installation by:   

`sudo docker run hello-world`  
or  
`docker --version`  

For more details, here is the official document for docker installation: [https://docs.docker.com/engine/install/ubuntu/](https://docs.docker.com/engine/install/ubuntu/)  

#### **2. Anaconda Installation**  
For python library usage, anaconda is adopted here. Users can download anaconda or miniconda with commands:  

`wget https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh`  
`bash Anaconda3-2022.05-Linux-x86_64.sh`  

And use `conda --version` to check the successful installation. For space saving, miniconda can also be adopted here. 

For more details, here is the official document for anaconda installation: [https://docs.anaconda.com/anaconda/install/linux/](https://docs.anaconda.com/anaconda/install/linux/)  

#### **3. PostgreSQL Installation**  
PostgreSQL is the database used here. For installation and initialization, please follow the official document: [https://www.postgresql.org/download/](https://www.postgresql.org/download/)

### **Clone Repository**
---
The application code is fully published on the github prpository. A git clone command can be used to copy all the project code for deployment. 

`git clone https://github.com/jvm-comp47360/bus-me.git`  

It's recommended to  `mkdir new_folder` for the storage of codes. Git installation can follow the link: [https://git-scm.com/book/en/v2/Getting-Started-Installing-Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)  


### **Docker Container Build**  
---
#### **1. Dependency Build**
Before the deployment of the docker container, it's necessary to run the python environment through conda. The dependency can be set by the command:  

`conda env create -f busme.yml`  
`busme.yml` is an environment file in the boot directory.  

#### **2. Environment Variable**  
The PostgreSQL database, Google API and Openweather API are used here. Please make sure to create the following variables as environment variables:  
* BUSME_USER 
* BUSME_PASSWORD  
* BUSME_HOST  
* BUSME_PORT  
* DJANGO_ALLOWED_HOSTS=app localhost 127.0.0.1 [::1]
* SECRET_KEY=django-insecure-lp*%28!qhd_*-qp1_c8h-2lrbe55r4=jkfmpc@l#10*$vn2au9
* REACT_APP_GOOGLE_KEY
* GOOGLE_DIRECTION_API_KEY
* OpenWeatherAPI_KEY  

The _BUSME_ prefix variables are properties of the local Postgres database. Make sure to create and they consist with the local database configurations.  

_DJANGO_ALLOWED_HOSTS_ and _SECRET_KEY_ are the django framework default variables in settings. _DJANGO_ALLOWED_HOSTS_ is a list of strings representing the host/domain names that this Django site can serve. A secret key for a particular Django installation. Keep them consistent with the above values, or start a new django project please make sure to update _SECREDT_KEY_. More details on django official documents:  
[https://docs.djangoproject.com/en/dev/ref/settings/#allowed-hosts](https://docs.djangoproject.com/en/dev/ref/settings/#allowed-hosts)  
[https://docs.djangoproject.com/en/dev/ref/settings/#secret-key](https://docs.djangoproject.com/en/dev/ref/settings/#secret-key)

Google key is for authenticating the Google API this application adopted. Don't forget to subscribe the Google Direction API before using it. For more details on: [https://console.cloud.google.com/](https://console.cloud.google.com/)

OpenWeatherAPI_KEY is for authenticating openweather api, which is used for weather forecasts. Create and subscribe in the website: [https://openweathermap.org/](https://openweathermap.org/)  

#### **3. Fill Database**  
Data needed here is stored in csv file. To load them into the database, please follow these command:   

`cd backend/`  
`python manage.py makemigrations`  
`python manage.py migrate`  
`python manage.py runscript load`  

The migration command will create tables in local database. And the load file in `backend/scripts/load.py` will fill these tables.

#### **4. Container Build**  
There are three containers here, which are nginx, database and backend. They have already been encapsulated in the `docker-compose.yml` file. To build these containers just need to run the command:  
`sudo docker-compose up –build `  
If you want to do some updates on that file, make sure to spin down currently running containers,   
`sudo docker-compose down`  
and restart the containers by the first command.  
## **How does BusMe work?**  
---
BusMe is a web application mainly functions are drived by machine learning models. React is mainly used here for the frontend UI design, Django is used for the backend and Postgres for data storage. Machine learning models are trained by past data. Users enter their trip data which include start stops, finish stops, route and times. These data is post to the backend django prediction API. The prediction results will be serialized in json format and called by the frontend. 
## **What technologies does BusMe use?**  
---
- React  
ReactJS is used here to corporate with the Google MAP. 
- Material UI  
It's specifically for React, and provides a high quality UX in google material design philosophy.  
- Typescript  
The main language is used in the frontend.
- Django  
To corporate with the machine learning models written in python. 
- PostgreSQL  
To store the data and search by sql syntax.
- Python  
The main language is used in the backend.
- Python library  
Pandas and Numpy for data process, and sklearn for modelling. 
- Nginx  
Use as server and reverse proxy.
- Docker  
Separate applications and run them together in any dependencies.

For specific usage in BusMe application. Please view Chapter 4 in the project report.  

## **Hint**
---
Due to UCD data confidentiality requirements, the historical data and models are pubic here. With the permition of UCD, run the follow command to move models to your local machine.  

`cd backend/prediction/`  
`mkdir Models`  
`scp -r team1@telemachus.ucd.ie:~/data_analysis/trip_model/choose_model backend/prediction/Models`  
`cd -`  
`mkdir search_file`  
`scp team1@telemachus.ucd.ie:~/data_analysis/trip_model/classifier.pkl backend/prediction/search_file`  
`scp team1@telemachus.ucd.ie:~/data_analysis/search_table/search_table.pkl backend/prediction/search_file`  

Once moving the model pickle files, this application can perfectly run on your server. 
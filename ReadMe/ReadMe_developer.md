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

_DJANGO_ALLOWED_HOSTS_ and _SECRET_KEY_ are the django framework default variables in settings. _DJANGO_ALLOWED_HOSTS_ is a list of strings representing the host/domain names that this Django site can serve. A secret key for a particular Django installation. Keep them consistent with the above values, or start a new django project please make sure to update _SECREDT_KEY_. More details on django official documents: [https://docs.djangoproject.com/en/dev/ref/settings/#allowed-hosts](https://docs.djangoproject.com/en/dev/ref/settings/#allowed-hosts) [https://docs.djangoproject.com/en/dev/ref/settings/#secret-key](https://docs.djangoproject.com/en/dev/ref/settings/#secret-key)

Google key is for authenticating the Google API this application adopted. Don't forget to subscribe the Google Direction API before using it. For more details on: [https://console.cloud.google.com/](https://console.cloud.google.com/)

OpenWeatherAPI_KEY is for authenticating openweather api, which is used for weather forecasts. Create and subscribe in the website: [https://openweathermap.org/](https://openweathermap.org/)  

#### **3. Container Build**  
There are three containers here, which are nginx, database and backend. They have already been encapsulated in the `docker-compose.yml` file. To build these containers just need to run the command:  
`sudo docker-compose up –build `  
If you want to do some updates on that file, make sure to spin down currently running containers,   
`sudo docker-compose down`  
and restart the containers by the first command.
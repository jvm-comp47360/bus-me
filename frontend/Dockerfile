FROM node:alpine as build
ARG REACT_APP_GOOGLE_MAPS
ENV REACT_APP_GOOGLE_MAPS=${REACT_APP_GOOGLE_MAPS}
WORKDIR /frontend
ADD . .
RUN npm install
RUN npm run build --verbose
FROM node:alpine as build
ARG REACT_APP_GOOGLE_MAPS
ENV REACT_APP_GOOGLE_MAPS=${REACT_APP_GOOGLE_MAPS}
WORKDIR /frontend
COPY ./frontend/package.json ./
COPY ./frontend/package-lock.json ./
RUN npm install

COPY ./frontend/ ./
RUN npm run build --verbose

FROM nginx:1.18.0-alpine

COPY ./nginx/nginx-proxy.conf /etc/nginx/conf.d/default.conf
COPY --from=build /frontend/build /usr/share/nginx/html
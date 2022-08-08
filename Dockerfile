FROM node:alpine as build
WORKDIR /frontend
COPY ./frontend/package.json ./
COPY ./frontend/package-lock.json ./
RUN npm install

ARG REACT_APP_GOOGLE_KEY
ENV REACT_APP_GOOGLE_KEY $REACT_APP_GOOGLE_KEY

COPY ./frontend/ ./
RUN npm run build --verbose

FROM nginx:1.18.0-alpine

COPY ./nginx/nginx-proxy.conf /etc/nginx/conf.d/default.conf
COPY ./nginx/cert.crt /etc/ssl/ssl-bundle.crt
COPY ./nginx/private.key /etc/ssl/private.key
COPY --from=build /frontend/build /usr/share/nginx/html
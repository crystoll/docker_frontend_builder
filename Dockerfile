FROM node:10 as builder
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
#COPY package.json /usr/src/app
COPY . /usr/src/app
RUN npm install
RUN npm run build

FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=builder /usr/src/app/build /usr/share/nginx/html
EXPOSE 80
RUN chown nginx.nginx /usr/share/nginx/html/ -R

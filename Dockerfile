FROM node As build
WORKDIR /dhondu
COPY . .
RUN npm install
RUN npm run build

FROM nginx AS FINALBUILD
COPY --from=build /dhondu/build /usr/share/nginx/html

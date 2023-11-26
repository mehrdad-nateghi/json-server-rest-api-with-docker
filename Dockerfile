##############################################
# Target = Install json server
# Build  = docker build -t json-api:v1 .
# Run    = docker run -it -p 4000:3000 json-api:v1
# Use    = http://localhost:4000/
##############################################
FROM node:lts-alpine3.18
WORKDIR /app
RUN npm i -g json-server
COPY /Databases/db.json .
EXPOSE 3000
ENTRYPOINT ["json-server","db.json","--host","0.0.0.0"]

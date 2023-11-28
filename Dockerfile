##############################################
# Target = Running JSON server with Docker
# Build  = docker build -t json-api:v1 .
# Run db1.json (Default)   = docker run -it -p 4000:3000 json-api:v1
# Run db2.json   = docker run -it -p 4000:3000 json-api:v1 json-server db2.json --host 0.0.0.0
# Use    = http://localhost:4000/
##############################################
FROM node:lts-alpine3.18
WORKDIR /app
COPY /Databases/db1.json .
COPY /Databases/db2.json .
RUN npm i -g json-server
EXPOSE 3000
CMD json-server db1.json --host 0.0.0.0
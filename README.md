# JSON server REST API with Docker
## Instructions for use

### Build image
```
docker build -t json-api:v1 .
``` 
### Run with db1.json (Default)
```
docker run -it -p 4000:3000 json-api:v1
```
### Run with other DB
```
docker run -it -p 4000:3000 json-api:v1 json-server db2.json --host 0.0.0.0
```
### Use
```
http://localhost:4000/
```

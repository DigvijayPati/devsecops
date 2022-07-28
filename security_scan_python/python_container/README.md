# Create docker image for python container
docker build -t digupats/security_scan_python -f Dockerfile .

# Push image to Dockerhub
dokcer push digupats/security_scan_python:latest

## Refer to :
[Demo] (https://github.com/pawnu/PythonSecurityPipeline)

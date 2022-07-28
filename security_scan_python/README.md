# Create docker image for Jenkins application
docker build -t digupats/devsecops -f Dockerfile .

# Start container 
docker-compose up -d

## Refer to :
[Demo] (https://github.com/pawnu/PythonSecurityPipeline)

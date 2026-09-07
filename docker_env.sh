docker build -t s3_dev_env .
docker run --rm -it -v $(pwd):/s3 s3_dev_env "/bin/bash"
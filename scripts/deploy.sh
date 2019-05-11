echo "Deploying to S3"

# docker run $(printenv | grep -E '^AWS' | sed 's/AWS_/-e /g' | sed 's/-e /-e AWS_/g') skrrskrr-deploy

docker run --env AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY --env AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY --env AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION skrrskrr-deploy

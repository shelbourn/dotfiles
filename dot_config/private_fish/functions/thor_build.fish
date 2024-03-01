function thor_build --description 'Builds and pushes the LightningMD base image for local development'
    # Authenticate with AWS
    aws_login_thor

    # Build the base image
    docker build --platform linux/amd64 -t elation-billing/php-base -f Dockerfile.php.base .
    echo "----> Successfully built base image"

    # Tag the image for ECR
    docker tag elation-billing/php-base:latest 839176741518.dkr.ecr.us-east-1.amazonaws.com/elation-billing/php-base:latest
    echo "----> Successfully tagged the image for ECR"

    # Push the image
    docker push 839176741518.dkr.ecr.us-east-1.amazonaws.com/elation-billing/php-base:latest
    echo "----> Successfully pushed the image"

end

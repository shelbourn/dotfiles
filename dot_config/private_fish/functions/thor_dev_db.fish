function thor_dev_db --description 'Opens an SSH tunnel for connecting to the Thor Dev DB'
    ssh -i /Users/matthew.shelbourn/Desktop/Working\ Files/LightningMDDev.pem ec2-user@i-0a5327994384bd99d -L 3305:lmddev.cluster-cgw1dbxdjgrm.us-east-1.rds.amazonaws.com:3306 -N
end

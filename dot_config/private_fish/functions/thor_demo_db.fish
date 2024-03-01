function thor_demo_db --description 'SSH tunnel to access LMD DB (leave open while accessing) -- may need to update ec2 instance ID periodically'
    ssh -i ~/Desktop/Working\ Files/LightningMDDemo.pem ec2-user@i-01452b4c467453855 -L 3307:elation-billing-demo.proxy-cgw1dbxdjgrm.us-east-1.rds.amazonaws.com:3306 -N
end

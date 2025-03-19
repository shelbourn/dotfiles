function replica_db_login --description 'Generates an AWS RDS token for ReadReplica DB access'

    # Generates the auth token
    echo -n "$(aws rds generate-db-auth-token --hostname el8-production-readreplicaaccess-db-1.cfoqlmodbszz.us-east-2.rds.amazonaws.com --port 3306 --region us-east-2 --username readonly --profile ReplicaReadAccessProd)"
end

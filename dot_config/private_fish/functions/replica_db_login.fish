function replica_db_login --description 'Generates an AWS RDS token for ReadReplica DB access'

    # Generates the auth token
    echo -n "$(aws rds generate-db-auth-token --hostname el8-production-hippo-replica-1.cnmd0e6ikrct.us-west-1.rds.amazonaws.com --port 3306 --region us-west-1 --username readonly --profile ReplicaReadAccessProd)"
end

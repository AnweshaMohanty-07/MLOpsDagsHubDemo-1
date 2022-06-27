# MLOps DagsHub Demo
Step 1:
    Create Git repo
    create DagsHub repo: https://dagshub.com

Step 2:
    install DVC
    dvc init
    configure dvc:
        dvc remote add origin https://dagshub.com/sashicds/MLOpsDagsHubDemo.dvc
        dvc remote modify origin --local auth basic
        dvc remote modify origin --local user sashicds
        dvc remote modify origin --local password $DAGSHUB_TOKEN

        dvc pull -r origin
        dvc add data/raw
        dvc push -r origin    

Step 3:
    install mlflow

    # add the following in the python code!
    mlflow.set_tracking_uri("https://dagshub.com/sashicds/MLOPS-Dagshub.mlflow")
    tracking_uri = mlflow.get_tracking_uri()
    print("Current tracking uri: {}".format(tracking_uri))

    export MLFLOW_TRACKING_USERNAME=sashicds
    export MLFLOW_TRACKING_PASSWORD=$DAGSHUB_TOKEN

# Install Docker/Jenkins
# Docker
     https://docs.docker.com/desktop/linux/install/ubuntu/

# Jenkins     
     $ docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
     
     $ docker ps
     $ docker logs d899d573f167 (CONTAINER ID obtained from docker ps)
      ubuntu : /var/snap/docker/common/var-lib-docker
      
     Open http://localhost:8080 & enter the password
     Install default packages
     Create First Admin User
     Jenkins URL: http://localhost:8080/


     
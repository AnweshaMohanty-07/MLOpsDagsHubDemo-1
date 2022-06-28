pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
            echo 'Building MLOps at scale Demo ...'
            sh 'make install'
          }
        }
        stage('Test'){
            steps {
                echo 'Testing MLOps at scale Demo ...'
            }
        }
    }
}
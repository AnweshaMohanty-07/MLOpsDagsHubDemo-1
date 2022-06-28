pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
            echo 'Building MLOps at scale Demo ...'
            sh 'make configure'
          }
        }
        stage('Test'){
            steps {
                echo 'Testing MLOps at scale Demo ...'
                sh 'make validate'
            }
        }
    }
}
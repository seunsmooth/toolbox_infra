pipeline {
    agent any
    stages {
        stage('apply') {
          environment {
            aws_access_key_id = credentials('ACCESS_KEY')
            aws_secret_access_key = credentials('SECRET_KEY')
        }
       steps {
          sh 'terraform init'
          sh 'terraform apply -auto-approve'
         }
      }
   }
}
pipeline {
    agent any
    stages {
        stage('Apply') {
          environment  {
             AWS_ACCESS_KEY = credentials('ACCESS_KEY')
             AWS_SECRET_ACCESS_KEY = credentials('SECRET_KEY')
             tf_log=DEBUG
            }
           steps {
              sh  'terraform init'
              sh  'terraform apply -auto-approve'
            }
        }
    }
}

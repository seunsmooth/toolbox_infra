pipeline {
    agent any
    stages {
        stage('Apply') {
          environment  {
             AWS_ACCESS_KEY_ID= credentials('ACCESS_KEY')
             AWS_SECRET_ACCESS_KEY = credentials('SECRET_KEY)
            }
           steps {
              sh  'terraform init && terraform apply -auto-approve'
            }
        }
    }
}

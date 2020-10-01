pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh ' rm -rf app'
                sh 'git clone https://github.com/seunsmooth/ubuntu_toolbox.git app'
                
            }
        }
        stage('build weather app Infrastructure') {
            steps {
                echo 'build Terraform infrastructure on AWS..'
                sh  'cd app &&  terraform init && terraform apply -auto-approve'
            }
        }
         stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}

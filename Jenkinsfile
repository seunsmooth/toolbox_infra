pipeline {
    agent any 
    stages {
       stage('Build') {      
            steps {

                sh 'sudo rm -rf ubuntu_toolbox'
                sh 'sudo terraform init'
                sh 'sudo terraform plan -auto-approve'
                sh  'sudo terrafrom apply -auto-approve'
            }
        }
        
            stage('Deploy') { 
                 steps {
                echo "task complete"
            }
        }
    }
   } 

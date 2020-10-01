pipeline {
    agent any 
    stages {
        stage ('Code  pull from Github') {
            steps {
                echo "Code Downloading"
                git 'https://github.com/seunsmooth/ubuntu_toolbox.git'
            }
        }
        stage ('approval process') {
            input { message 'should we continue'
                   ok 'Yes we should'
                   submitter "alice and bob"
                   parameters {
                       string (name: 'DEPLOYER', defaultValue: 'Olu', description: "about to deploy")
                   }
            }
            steps {
                echo "seeking approval"
            }
        }
        stage ('Terraform code deploy') {
            steps {
                echo "copying index file"
                sh 'terraform init'
                sh 'terraform plan -auto-approve'
                sh  'terrafrom apply'
            }
        }
        stage ('Job done') {
            steps {
                echo "task complete"
            }
        }
    }
}
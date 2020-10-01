pipeline {
    agent any 
    stages {
        stage ('Code  pull from Github') {
            steps {
                echo "Code Downloading"
                sh ' git clone https://github.com/seunsmooth/ubuntu_toolbox.git app '
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
                sh 'sudo cd app'
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
pipeline {
    agent any     
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
    
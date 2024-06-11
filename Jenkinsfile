pipeline{
    agent any

    stages{
        stage('checkout'){
            steps{
            git branch: 'main', credentialsId: 'git-cred', url: 'https://github.com/vinodabadiger/react1.git'
            }
        }

        stage('test'){
            steps{
               sh" ls "
               sh "pwd "
            }
        }

        stage('test'){
            steps{
               mail bcc: '', body: 'pipeline successfully updated', cc: '', from: '', replyTo: '', subject: 'Pipeline Status', to: 'vinodbadiger321@gmail.com'
            }
        }
    }
}
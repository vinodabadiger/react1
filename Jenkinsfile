pipeline{
    agent any

    stages{
        stage('checkout'){
            git branch: 'main', credentialsId: 'git-cred', url: 'https://github.com/vinodabadiger/react1.git'
        }
    }
}
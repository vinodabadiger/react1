pipeline{
    agent any

    stages{
        stage('checkout'){
            steps{
            git branch: 'main', credentialsId: 'git-cred', url: 'https://github.com/vinodabadiger/react1.git'
            }
        }

        stage('build'){
            steps{
               sh "docker build -t react:1 ."
            }
        }

       stage('tag'){
            steps{
               sh "docker tag react:1 vinoda32/react:1"
            }
        }

 
        stage('push'){
            steps{
                  withDockerRegistry(credentialsId: 'docker-cred', url: 'vinoda32/react') {
                "docker push vinoda32/react:1"
            }
        }

        }

 }
}
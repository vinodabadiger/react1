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
               sh "docker build -t react:3 ."
            }
        }

       stage('tag'){
        steps{
         sh "docker tag react:3 vinoda32/react:3"
        }
     }

        stage('push'){
       steps{
         withDockerRegistry(credentialsId: 'docker-cred', url: 'https://index.docker.io/v1/') {
          sh 'docker push vinoda32/react:3'
            }
         }
      }
  
   
  


}

}
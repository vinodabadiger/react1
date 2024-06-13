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
               sh "docker build -t vinoda32/react:5 ."
            }
        }

    //    stage('tag'){
    //     steps{
    //     sh "docker tag react:4 vinoda32/react:4"
    //     }
    //    }

       stage('push'){
        steps{
            withDockerRegistry(credentialsId: 'docker-cred', url: 'https://index.docker.io/v1/') {
            sh 'docker push vinoda32/react:5'
            }
        }
       }

      stage('deploy'){
        steps{
         sh "docker run -d -p 3000:80 vinoda32/react:5 "
        }
      }
  
       stage('Cleanup'){
        steps{
         sh "docker rmi vinoda32/react:5 "
        }
      }
  


}

}
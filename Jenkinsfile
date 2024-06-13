def img
pipeline{
    agent any
    environment{
    registry = "vinoda32/react"
    }
    stages{
        stage('checkout'){
            steps{
            git branch: 'main', credentialsId: 'git-cred', url: 'https://github.com/vinodabadiger/react1.git'
            }
        }

        stage('build'){
            steps{
                script{
                 img = registry + ":${env.BUILD_ID}"
                 sh "docker build -t $img ."
                }
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
            sh "docker push $img"
            }
        }
       }

      stage('deploy'){
        steps{
         sh "docker stop react"
         sh "docker rm react"
         sh "docker run -d -p 3000:80 --name react $img "
        }
      }
  
    //    stage('Cleanup'){
    //     steps{
    //      sh "docker rmi vinoda32/react:5 "
    //     }
    //   }
  


}

}
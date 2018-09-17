pipeline {
    agent any

    stages {
        stage ('Build') {
            steps {
                
                    sh "docker build -t scratch.0.0.${env.BUILD_ID} -f Dockerfile ."                
            }
        }

        stage ('Deploy') {
            steps {
               
                    sh "docker run --name scratch.0.0.${env.BUILD_ID} scratch.0.0.${env.BUILD_ID}"               
            }
        }
    }
}

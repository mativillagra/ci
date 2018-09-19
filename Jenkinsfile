pipeline {
    agent any

    stages {
        stage ('Build') {
            steps {
                
                    sh "cd flask-app && docker build -t scratch.0.0.${env.BUILD_ID} -f Dockerfile ."                
            }
        }

        stage ('Tag') {
            steps {

                    sh "cd flask-app && docker tag scratch.0.0.${env.BUILD_ID} localhost:5000/scratch.0.0.${env.BUILD_ID} && docker push localhost:5000/scratch.0.0.${env.BUILD_ID}"
            }
        }

        stage ('Deploy') {
            steps {
               
                    sh "cd flask-app && docker run -d -p 8888:5000 --name scratch.0.0.${env.BUILD_ID} scratch.0.0.${env.BUILD_ID}"               
            }
        }
    }
}

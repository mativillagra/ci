pipeline {
    agent any

    stages {
        stage ('Build') {
            steps {
                
                    sh "cd flask-app && docker build -t scratch.0.0.${env.BUILD_ID} -f Dockerfile ."                
            }
        }


        stage ('Deploy') {
            steps {
               
                    sh "cd flask-app && docker run -d -p 8888:5000 --name scratch.0.0.${env.BUILD_ID} scratch.0.0.${env.BUILD_ID}"               
            }
        }
    }
}

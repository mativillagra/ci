pipeline {
    agent any

    stages {
        stage ('Build') {
            steps {
                
                    sh "cd flask-app && docker build -t scratch:0.0.${env.BUILD_ID} -f Dockerfile ."
            }
        }

        stage ('Tag') {
            steps {

                    sh "cd flask-app && docker tag scratch:0.0.${env.BUILD_ID} mativillagra/scratch:0.0.${env.BUILD_ID} && docker push mativillagra/scratch:0.0.${env.BUILD_ID}"
            }
        }

        stage ('Deploy') {
            steps {
               
                    sh "bash deploy.sh ${env.BUILD_ID}"               
            }
        }
    }
}


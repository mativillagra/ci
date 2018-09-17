pipeline {
    agent any

    stages {
        stage ('Build') {
            steps {
                
                    sh "docker build -t registry.gitlab.com/dgrcorrientes/curso-git.0.0.${env.BUILD_ID} -f Dockerfile ."                
            }
        }


         stage ('Push') {
            steps {

                    sh "docker push registry.gitlab.com/dgrcorrientes/curso-git:0.0.${env.BUILD_ID}"
            }
        }


        stage ('Deploy') {
            steps {
               
                    sh "docker run -d --name registry.gitlab.com/dgrcorrientes/curso-git.0.0.${env.BUILD_ID} registry.gitlab.com/dgrcorrientes/curso-git.0.0.${env.BUILD_ID}"               
            }
        }
    }
}

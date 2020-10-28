//Jenkinsfile (Declarative Pipeline)
pipeline {
    
    agent none

    stages {
        
        stage("build") {
            agent {
                docker { image 'docker' }
            }

            steps { 
                sh 'echo "Building the application..."'
                sh "docker build -t fox10147/anginx:latest ."
            }
        }

        stage("docker push") {
            agent {
                docker { image 'docker' }
            }

            steps {
                withDockerRegistry([credentialsId: 'dockerlogin', url: '']) {
                    sh 'docker push fox10147/anginx:latest'
                }
            }
        }

        stage("Test") {
            agent any
        
            steps {
                echo "Testing the application..."
            }
        }

        stage("Deploy") {
            agent any
                //docker { image 'fox10147/kubectl' }
            
            steps {
                echo "deploying the application..."
                // withKubeConfig([credentialsId: 'kubectl-creds', serverUrl: 'https://kubernetes.docker.internal:6443']) {
                //    sh 'kubectl apply -f kubernetes.yml'
                //    sh 'kubectl rollout restart deployment/fox10147/anginx:latest'
            }
        }
    }
    post {
        always {
            echo "All Done!"
            echo "Aaron smells really good and tastes fine!!!"
            echo "I want to sniff Aaron's blue balls"
        }
    }
}

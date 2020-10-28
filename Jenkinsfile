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

        stage("Test") {
            agent any
        
            steps {
                echo "Testing the application..."
            }
        }

        stage("Deploy") {
            agent any
            
            steps {
                echo "deploying the application..."
            }
        }
    }
    post {
        always {
            echo "All Done!"
        }
    }
}

//Jenkinsfile (Declarative Pipeline)
pipeline {
    
    agent none

    stages {
        stage("Install Dependencies") {
            steps {
                sh 'install npm'
            }
        }

        stage("build") {
            agent any

            steps {
                echo "Building the application..."
                sh "docker build -t anginx:$BUILD_NUMBER ."
                sh "echo $note"
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

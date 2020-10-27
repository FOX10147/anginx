//Jenkinsfile (Declarative Pipeline)
pipeline {
    
    agent none

    stages {

        stage("build") {
            agent { dockerfile true }

            steps {
                echo "Building the application..."
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

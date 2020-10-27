//Jenkinsfile (Declarative Pipeline)
pipeline {
    
    agent none

    stages {
        
        stage("build") {
            agent any

            steps { 
                echo "Building the application..."
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

//Jenkinsfile (Declarative Pipeline)
pipeline {
    
    agent none

    stages {
        
        stage("build") {
            agent any

            steps { 
                echo "1"
                echo "2"
                echo "3" 
                echo "4"
                echo "5"
                echo "6" 
                echo "7"
                echo "8"
                echo "9"
                echo "10"
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

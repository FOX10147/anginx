pipeline {
    
    agent any

    stages {

        stage("build") {

            steps {
                echo "Building the application..."
            }
        }

        stage("Test") {

            steps {
                echo "Testing the application..."
            }
        }

        stage("Deploy") {
            
            steps {
                echo "deploying the application..."
            }
        }
    }
    post {
        always {
            steps {
                echo "All Done!"
            }
        }
    }
}

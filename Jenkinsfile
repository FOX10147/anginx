//Jenkinsfile (Declarative Pipeline)
pipeline {
    
    agent { dockerfile true }

    stages {

        stage("build") {

            steps {
                echo "Building the application..."
                sh "echo $note"
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
            echo "All Done!"
        }
    }
}

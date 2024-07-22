pipeline {
    agent any

    stages {
        
        stage('Set up Python') {
            steps {
                // Set up Python
                sh '''
                apt-get update
                apt-get install -y python3-pip
                pip3 install --upgrade pip
                '''
            }
        }
        stage('Install dependencies') {
            steps {
                // Install dependencies from requirements.txt
                sh 'pip3 install -r requirements.txt'
            }
        }
        stage('Run tests') {
            steps {
                // Run the tests using unittest
                sh 'python3 -m unittest discover'
            }
        }
    }
}

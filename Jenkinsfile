pipeline {
    agent any
    stages {
        stage('Building Application') {
            steps {
                sh 'mvn -f pom.xml clean package'
            }
            post {
                success {
                    echo "Now archiving artifact...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }
        stage ("Deploying to Docker") {
            steps {
                sh "sudo docker build . -t tomcatserver"
            }
        }
    }
}
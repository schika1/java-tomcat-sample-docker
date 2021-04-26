pipeline {
    agent any
    stages {
        stage('Building Application') {
            steps {
                sh 'mvn -f java-tomcat-sample/pom.xml clean package'
            }
            post {
                success {
                    echo "Now archiving artifact...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }
        stage ("Deploying to container") {
            steps {
                sh "docker build . -t tomcatserver"
            }
        }
    }
}
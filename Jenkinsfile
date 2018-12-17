pipeline {
 agent any
stages {
  stage('CodeCheckOut') {
    steps {
      script {
       checkout scm
       /*def mvnHome = tool 'maven-3'
       def javaHome = tool 'JAVA_1.8'*/  
       }
      }
     }      
      stage('Build customer app code'){
        steps {
        script {
       //sh 'sudo apt-get update'  
       sh 'sudo apt-get -y install default-jdk'
       sh 'sudo apt-get -y install maven'
       sh 'mvn clean install -Dmaven.test.skip=true'
       }
      }
     }
 stage('Dockarizing the image'){
        steps {
        script {
        sh 'docker container run -d -p 8082:8081 -v /var/run/docker.sock:/var/run/docker.sock amitpandey1992/demo
       sh 'sudo docker build -t amitpandey1992/demo .'
            }
      }
     }
    }
}

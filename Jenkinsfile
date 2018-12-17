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
       /*sh 'sudo yum -y install java-1.8.0-openjdk'*/
         sh 'sudo apt-get -y update && sudo apt-get -y upgrade'
sh 'sudo apt-get install -y default-jdk'


       /*sh 'sudo apt-get install -y oracle-java8-installer'*/
       sh 'sudo yum -y install maven'
       sh 'mvn clean install'
       }
      }
     }
    }
}

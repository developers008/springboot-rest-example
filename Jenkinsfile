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
         sh 'sudo apt-get update && sudo apt-get upgrade'
sh 'sudo apt-get install -y software-properties-common'
sh 'sudo add-apt-repository ppa:webupd8team/java'
sh 'sudo apt-get update'
sh 'sudo apt-get install -y oracle-java8-installer'
sh 'sudo apt-get install -y openjdk-8-jdk'
sh 'sudo apt-get install -y openjdk-8-jre'
       /*sh 'sudo apt-get install -y oracle-java8-installer'*/
       sh 'sudo yum -y install maven'
       sh 'mvn clean install'
       }
      }
     }
    }
}

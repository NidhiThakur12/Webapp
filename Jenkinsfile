pipeline {
    agent any
    tools {
        maven 'Maven'
    }
    environment {
        NODE_ENV='production'
    }
    
  
    stages {
        
        stage('CleanWorkspace') {
            steps {
              cleanWs()
             }
        }
        
        stage('source') {
            steps {
               git 'https://github.com/NidhiThakur12/Webapp.git'

             }
        }            
        
         stage('build') {
            steps {
                sh 'mvn -f pom.xml -B -DskipTests clean package'
            }
            
        }
        
  stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t apache:latest .' 
                sh 'docker tag devops-learn nidhi1203/apache:latest'
               
          }
        }
     
  stage('Publish image to Docker Hub') {
          
            steps {
        withDockerRegistry([ credentialsId: "Docker-hub", url: "" ]) {
          sh  'docker push nidhi1203/apache:latest' 
        }
                  
          }
        }
       
        
    }
}

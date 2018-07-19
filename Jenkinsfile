def label = "mypod-${UUID.randomUUID().toString()}"
podTemplate(label: label) {
  node ("jenkins-maven") {
    stage('checkout'){
      git checkout 
    }
    
    stage('Build') {
      container('maven') {
        // Run the maven build
    
         if (isUnix()) {
           sh  "ls -l"
            sh "mvn -e -X  -Dmaven.test.failure.ignore clean package"
         } else {
            bat(/mvn -Dmaven.test.failure.ignore clean package/)
         }
      }
       stage('Results') {
      junit '**/target/surefire-reports/TEST-*.xml'
      archive 'target/*.jar'
   }
    }
  }
}

  

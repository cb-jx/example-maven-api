def label = "mypod-${UUID.randomUUID().toString()}"
podTemplate(label: label) {
  node ("jenkins-maven") {
    stage('Build') {
      container('maven') {
        // Run the maven build

         if (isUnix()) {
            sh "'mvn' -Dmaven.test.failure.ignore clean package"
         } else {
            bat(/"mvn" -Dmaven.test.failure.ignore clean package/)
         }
      }
       stage('Results') {
      junit '**/target/surefire-reports/TEST-*.xml'
      archive 'target/*.jar'
   }
    }
  }
}

  

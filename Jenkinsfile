node ("maven-jdk-8") {
   def mvnHome
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
     // git 'https://github.com/jglick/simple-maven-project-with-tests.git'
      checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'bitbucketID', url: 'https://github.com/cccaternberg/example-maven-api.git']]])

   }
   
   
   stage('Build') {
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

node ("shared-agent") {

    def mvnHome = tool 'M3'
    def jdkHome = tool 'jdk7'
   // env.PATH = "${jdk}/bin:${mvnHome}/bin:${env.PATH}"


   // Mark the code checkout 'stage'....
   stage 'Checkout'
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'bitbucketID', url: 'https://caternberg@bitbucket.org/caternberg/example-maven-api.git']]])

  // Mark the code build 'stage'....
   stage concurrency: 2, name: 'build'
   // Run the maven build

    withEnv([
              'PATH=' + "${jdkHome}/bin:${mvnHome}/bin:" + env.PATH,
              "JAVA_HOME=${jdkHome}"

         ]) {
        sh "${mvnHome}/bin/mvn clean install"
    }
}
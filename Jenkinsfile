import Helper

node {
    def helper = new Helper(steps)
    def mvnHome = tool 'M3'
    def jdkHome = tool 'jdk7'



   // Mark the code checkout 'stage'....
   stage 'Checkout'
        deleteDir()
       // checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'bitbucketID', url: 'https://caternberg@bitbucket.org/caternberg/example-maven-api.git']]])
         helper.checkoutFromBranchRelativeTargetDir("https://caternberg@bitbucket.org/caternberg/example-maven-api.git", ".", "master")

    stage  name: "parallel"
      parallel (
         phase1: { sh "echo p1; sleep 10; echo phase1" },
         phase2: { sh "echo p2; sleep 15; echo phase2" }
       )
      sh "run this after both phases complete"

   stage  name: 'build'
    withEnv([
              'PATH=' + "${jdkHome}/bin:${mvnHome}/bin:" + env.PATH,
              "JAVA_HOME=${jdkHome}"

         ]) {
        sh "${mvnHome}/bin/mvn clean install"
    }
}
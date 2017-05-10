import Helper

node {
    def helper = new Helper(steps)
    def mvnHome = tool 'M3'
    def jdkHome = tool 'jdk7'


stage name: "checkout"
    helper.checkoutRelativeTargetDir("https://caternberg@bitbucket.org/caternberg/example-maven-api.git", ".", "sharedlib") {

   stage  name: 'build'
    withEnv([
              'PATH=' + "${jdkHome}/bin:${mvnHome}/bin:" + env.PATH,
              "JAVA_HOME=${jdkHome}"

         ]) {
        sh "${mvnHome}/bin/mvn clean install"
    }
}
node ('shared-agent') {
    def mvnHome = tool 'M3'
    def jdk = tool 'jdk8'
    env.PATH = "${jdk}/bin:${mvnHome}/bin:${env.PATH}"

  
    stage ("build") {
           sh "mvn clean install"
    }


}

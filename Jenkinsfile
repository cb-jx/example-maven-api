node  {
    def mvnHome = tool 'M3'
    def jdk = tool 'jdk8'
    env.PATH = "/var/jenkins_home/tools/hudson.model.JDK/jdk8/bin:${mvnHome}/bin:${env.PATH}"

  
    stage concurrency: 2, name: 'build'
           sh "mvn clean install"
    


}

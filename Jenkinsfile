node ('shared-agent') {
    def mvnHome = tool 'M3'
    def jdk = tool 'jdk8'
    env.PATH = "${jdk}/bin:${mvnHome}/bin:${env.PATH}"

    stage ("checkout") {
         checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'bitbucketID', url: 'https://caternberg@bitbucket.org/caternberg/example-maven-api.git']]])
    }

    stage ("build") {
           sh "mvn clean install"
    }


}

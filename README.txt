 #Update the versions
 mvn versions:set -DartifactId=api -DgroupId=de.simple -DnewVersion=1.0  -DoldVersion=0.0.1-SNAPSHOT
    
 
 # deploy to artifactory
 mvn -s <PATH_TO_SETTINGS_CONF>/settings-artifactory.xml  clean deploy -Partifactory

    
    

 
  # deploy to artifactory
 mvn -s <PATH_TO_SETTINGS_CONF>/settings-nexus.xml  clean deploy -Pnexus

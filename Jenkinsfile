node
{
    def mavenHome=tool name:"Maven"
    stage('git checkout')
    {
        git branch: 'main', url: 'https://github.com/Maheshbabuduggi/Maven_web_app.git'
    }
    stage('compile')
    {
        sh "${mavenHome}/bin/mvn compile"
    }
    stage('Build')
    {
        sh "${mavenHome}/bin/mvn clean package"
    }
    stage('SQ Report')
    {
        sh "${mavenHome}/bin/mvn clean package sonar:sonar"
    }
    stage('Nexus')
    {
        sh "${mavenHome}/bin/mvn clean deploy sonar:sonar"
    }
    stage('Tomcat')
    {
        sh """
        
        curl -u mahesh:password \
        --upload-file /var/lib/jenkins/workspace/scripted-way-PL-1/target/maven-web-application.war \
        "http://13.232.2.213:8085/manager/text/deploy?path=/maven-web-application&update=true"
          
        """
    }
    
}

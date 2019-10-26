pipeline {
    agent any 
    stages {
        stage('Clone repo') { 
            steps {
	        	echo 'Cloning ...'
	        	sh "rm -rf /var/lib/jenkins/workspace/java-pipeline-jenkinsfile/java"
                sh "git clone https://github.com/pabloccna/java-pipeline-jenkinsfile.git"	
            }
        }
        stage('Build') { 
            steps {
		        echo 'Building ...'
                sh "javac HelloWorld.java"
           }
        }
        stage('Run') { 
            steps {
                echo 'Running ...'
	        	sh "java HelloWorld"
            }
        }
        stage('Notify to Slack'){
            steps {
                echo 'Notificating ...'
	        	slackSend baseUrl: 'https://hooks.slack.com/services/', 
                channel: '#testing-java-slack-jenkins', 
                color: 'good', 
                message: 'Welcome to jenkins via slack, via Git con un Pipeline en Jenkis',
                teamDomain: 'javahomecloud',
                tokenCrendetialId: '4cyFjkMh078RGXbVAxXibqfc'
            }
        }
    }
}
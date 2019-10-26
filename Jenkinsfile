pipeline {
    agent any 
    stages {
        stage('Clone repo') { 
            steps {
	        	echo 'Cloning ...'
	        	sh "rm -rf /var/lib/jenkins/workspace/java-pipeline-jenkinsfile"
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
                echo 'Avisando a slack!!!!'
            }
        }
    }
}
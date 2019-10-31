pipeline {
    agent any 
    stages {
        stage('Cleaning'){
            steps {
                echo 'Limpiando...'
                sh "rm -rf /var/lib/jenkins/workspace/java-pipeline-jenkinsfile/java"
                }
        }
        stage('Clone repo') { 
            steps {
	        	echo 'Cloning ...'
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

    }
}

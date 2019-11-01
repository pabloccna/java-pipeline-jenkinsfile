pipeline {
    agent any 
    stages {
        stage('Clone repo') { 
            steps {
	        	echo 'Cloning ...'
                	sh "git clone https://github.com/pabloccna/java-pipeline-jenkinsfile.git"	
            }
        }
        stage('Build') { 
            steps {
		    ansiColor('xterm') {
   				 echo 'something that outputs ansi colored stuff'
		}
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
	post { 
        	always { 
            	cleanWs()
		}
        }
}

pipeline {
    agent any 
    stages {
        stage('Clone repos') { 
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
	    
	stage('Terraform') { 
            steps {
		   echo 'Init ...'
                	
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

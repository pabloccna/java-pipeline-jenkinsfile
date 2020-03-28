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
		        echo 'Building ...'
                	sh "javac HelloWorld.java"
           }
        }
	    
	stage('Creo artefacto') { 
            steps {
                	echo 'artefacto ...'
	        	sh "zip -r art-v1.zip *.*"
		    	cp art-v1.zip /artefactos/art-v1.zip
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

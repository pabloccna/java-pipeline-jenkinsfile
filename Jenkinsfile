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
	    
	stage('Stage') { 
            steps {
                	echo 'Artefacto ...'
	        	sh 'zip -r app-v1.zip *.*'
		    	sh 'aws s3 cp app-v1.zip s3://emer-log/repo/app-v1.zip'
            	}
        }  
	   
	stage('Run') { 
            steps {
                	echo 'Running ...'
	        	sh "java HelloWorld"
            	}
        }
	    
	stage('preparando infra') { 
            steps {
                	echo 'Running ...'
	        	sh "/bin/terraform init"
            	}
        }
	    
    }
	post { 
        	always { 
            	cleanWs()
		}
        }
}

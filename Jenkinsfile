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
	    
	stage('Terraform init') { 
            steps {
                	
	        	sh "terraform init"
            	}
        }
	stage('Terraform Plan') { 
            steps {
                	
	        	sh "terraform plan --auto-approve"
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

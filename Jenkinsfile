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
	    
	stage('Preparando infra') { 
            steps {
                	echo '> Running'
	        	sh '/bin/terraform init'
		    	sh '/bin/terraform plan'
		    	sh '/bin/terraform apply -auto-approve'
            	}
	}
	stage('Testing infra') { 
		parallel{
			stage('Testing PING'){
				steps {
                			echo '> Testing Ping'
					sh 'ping 127.0.0.1 -c4'
				}
			}
			stage('Testing HTTP'){
				steps{
					echo 'HTTP abierto'
					sh 'curl http://127.0.0.1'
				}
			}
            	}
	}
	    
	    
    }

	post { 
		always { 
            	cleanWs()
		}
	}   
}

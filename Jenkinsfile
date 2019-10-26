pipeline {
    agent any 
    stages {
        stage('Clone repo') { 
            steps {
	        	echo 'Cloning ...'
	        	
            }
        }
        stage('Build') { 
            steps {
		        echo 'Building ...'
                
            }
        }
        stage('Run') { 
            steps {
                echo 'Running ...'
	        	echo 'Hola mundo!!!!!!'
            }
        stage ('Aviso a Slack team')
            steps{
                echo 'Avisando a slack.....'
            }
        
        }
    }
}
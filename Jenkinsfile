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
        }
        stage('Notify to Slack'){
            steps {
                echo 'Avisando...'
            }
        }
    }
}
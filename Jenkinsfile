pipeline {
    
    agent any
    
    environment {
        
      DOCKERHUB_CREDENTIALS=credentials('jenkins-docker-key')
      
    }
    
  stages {
    stage("Set Up") {
      steps {
        git branch: 'main', url: 'https://github.com/shyamriversafe/fibbinocci.git'
      }
    }
    stage("run") {
      steps {
        echo 'Build Steps'
        sh '''
			chmod 755 ./fib.sh
			./fib.sh 7
        '''
        }
    }
    stage("Build") {
        steps {
            echo 'Build Steps'
            sh 'docker build -t shyamnalluri/jenkins-fib:latest .'
        }
    }
	stage ('run-build'){
		steps{
			echo 'running'
			sh 'docker -it run shyamnalluri/jenkins-fib:latest'			
			}
		}
    stage ('login'){
        steps {
            echo 'logging in to docker hub'
            sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
        }
    }
    stage ('docker-push'){
        steps {
            echo 'Pushing to docker hub'
            sh 'docker push shyamnalluri/jenkins-fib:latest'
        }
    }
  }
}

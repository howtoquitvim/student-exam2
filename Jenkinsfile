pipeline {
  environment {
    imagename = "epamexam"
  }
  agent { 
    label 'JenkAgent' 
  }
     
  options { 
    timestamps() 
  }
     
  stages {
            
    stage('PyTests&ImgBuild') {
      steps {
   	/*sh 'python3 -m venv venv' 
   	sh '. venv/bin/activate'
   	sh 'pip3 install --user -e .'*/
   	sh "pip3 install --user -e '.[test]'"
   	sh '/usr/bin/coverage-3.6 run -m pytest'
   	sh '/usr/bin/coverage-3.6 report'
      }
    }
    stage('Build image'){
      steps {
        script {
          dockerImage = docker.build imagename
        }
      }
    }
    stage('image push') {
      steps {
        script {
          docker.withRegistry('', 'imagepush'){
            dockerImage.push('latest')
          }
        }
      }
    } 
  }
}

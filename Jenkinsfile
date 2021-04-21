pipeline {
  agent { 
    label 'JenkAgent' 
  }
     
  options { 
    timestamps() 
  }
     
  stages {
            
    stage('PyTests'){
      steps {
   	sh 'python3 -m venv venv' 
   	sh '. venv/bin/activate'
   	sh 'pip3 install --user -e .'
   	sh "pip3 install --user -e '.[test]'"
   	sh '/usr/bin/coverage-3.6 run -m pytest'
   	sh '/usr/bin/coverage-3.6 report'
      }
    }
  }
}

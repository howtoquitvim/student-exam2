pipeline {
     agent { 
	label 'JenkAgent' 
               }
	
     options { 
	timestamps() 
                  }
	
     stages {
               
	stage('InstallVenv'){
	   steps {
		sh 'python3 -m venv venv'
	            }
		               }

	stage('VenvActivate') {
	   steps {
		sh '. venv/bin/activate'
	             }
 			     }
	stage('PipInstallE') {
	   steps {
		sh 'pip3 install --user -e .'
	             }
			}
	stage('PipInstallEtest') {
	   steps {
		sh "pip3 install --user -e '.[test]'"
	             }
			        }
	stage('CoverageRun') {
	   steps {
		sh '/usr/bin/coverage-3.6 run -m pytest'
	            }
			    }
	stage('CoverageReport') {
	   steps{
		sh '/usr/bin/coverage-3.6 report'
	            }
			          }
	
	    }
       
}

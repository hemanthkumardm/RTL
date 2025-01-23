pipeline {
    agent any
    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/user/ripple-carry-adder.git'
            }
        }
        stage('Run Simulation') {
            steps {
                sh 'vsim -c -do "run -all; quit;"'
            }
        }
        stage('Check Results') {
            steps {
                sh 'grep PASS simulation.log'
            }
        }
    }
}

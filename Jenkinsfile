pipeline {

    agent any
        tools {
        maven 'Maven 3.9.0'
         }
        environment {
            PATH = "/usr/lib/jvm/jdk-19/bin:$PATH"
            JAVA_HOME="/usr/lib/jvm/jdk-19/"
            registry = "tarnof/domesspring"
            registryCredential = 'jenkinsChambreDockerHub'
            dockerImage = ''
        }

        stages {
            stage('recuperation du projet'){
                steps {
                    git branch: 'master',
                    credentialsId: 'jenkinsgithub',
                    url :'git@github.com:Tarnof-Code/domesSpring.git'
                }
            }
            stage("Compile") {
                steps {
                  sh "mvn compile"
                }
            }
            stage("Test") {
                steps {
                    sh "mvn test"
                }
            }
            stage("Package") {
                steps {
                    sh "mvn package"
                }
            }
            stage("Docker build") {
                steps {
                   script {
                        sh "docker build -t 172.17.0.3:5000/imagedomes ."
                        }
                }
            }
            stage("Docker push") {
                steps {
                   script {
                        sh "docker push 172.17.0.3:5000/imagedomes"
                        }
                }
            }

        }
}
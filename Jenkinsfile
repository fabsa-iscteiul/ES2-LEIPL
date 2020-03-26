pipeline {
  agent any
  stages {
    stage('Hello World') {
      steps {
        echo 'Estamos on the line!'
      }
    }

    stage('Compile') {
      steps {
        sh 'javac C:\\Users\\pmsan\\git\\ES2-LEIPL\\ES2-LEIPL-2020\\src\\main\\java\\es2\\helloWorld\\HelloWorld.java'
      }
    }

    stage('Run') {
      steps {
        sh '''cd C:\\Users\\pmsan\\git\\ES2-LEIPL\\ES2-LEIPL-2020\\src\\main\\java\\
java es2.helloworld.HelloWorld'''
      }
    }

  }
}
def dockeruser = "a20687iscte"
def imagename = "openjdk:7"
def container = "jdk"

node {

    echo 'Building Java Docker Image'
    
    stage('Git Checkout') {
        git 'https://github.com/fabsa-iscteiul/ES2-LEIPL'
    }

    stage('Build Docker Image'){
        powershell "docker build -t ${imagename} ."
    }

    stage('Running Container to Test'){
        powershell "docker run -i --name ${container} ${imagename}"
    }
    
    stage('Pushing Images to DockerHub'){
       withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', passwordVariable: 'dockerpasswd', usernameVariable: 'dockeruser')]) {
           powershell "docker login -u ${dockeruser} -p ${dockerpasswd}"
       }
        powershell "docker push ${dockeruser}/openjdk:7"
    }
    
}

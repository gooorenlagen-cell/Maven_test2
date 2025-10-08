pipeline{
    agent any
    stages{
        stage("Checkout"){
            steps{
                sh'''
                echo Well, this step was done before
                '''
            }
        }
        stage("Build"){
            steps{
                sh'''
                mvn clean package
                '''
            }
        }
        stage("Test"){
            steps{
                sh'''
                echo Pretending like we tested this 
                '''
            }
        }
        stage("Docker Build and push"){
            steps{
                sh'''
                echo "тут должен быть, но я не хочу логиниться docker build -t freeze919/my-test-maven:latest ."
                echo "тут должен быть, но я не хочу логиниться docker push freeze919/my-test-maven:latest"
                '''
            }
        }
        stage("Deploy to k8s"){
            steps{
                sh'''
                helm create my-app-chart
                '''
            }
        }

    }
    
}
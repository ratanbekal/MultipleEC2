#!groovy

node {
   
Environment Variables
env.instance_count = "${instance_count}"
echo "${env.instance_count}"
env.plan = "${plan}"
env.Wipe_Workspace = "${Wipe_Workspace}"
  
withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'green_berets', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]){
   
  stage ('CleanUp') {
      if (env.Wipe_Workspace == 'YES'){ 
         deleteDir()
      }
  }
      
  stage ('Checkout') {
      git 'https://github.com/shruthiWadageri/MultipleEC2.git'
  }

  stage ('Terraform Plan') {
      env.instance_count = "${instance_count}"
      echo "${env.instance_count}"
      instancecount = ${env.instance_count}
      echo "--------------"
      echo $instancecount
      tagname = ${env.tag_name}
      echo $tagname
     echo "--------------"
      sh 'terraform init'
      sh 'terraform plan -var instance_count=$instancecount -var tag_name=$tagname'
  }


  stage ('Terraform Apply') {
    
      if (env.plan == 'apply'){  
      sh 'terraform apply  -var instance_count=%instance_count% -var tag_name=%tag_name% -auto-approve'}
  }
      
   stage ('Terraform destroy') {
      
      if (env.plan == 'destroy'){ 
 
      sh 'terraform destroy  -var instance_count=%instance_count% -var tag_name=%tag_name% -auto-approve'}
  }

  }

}

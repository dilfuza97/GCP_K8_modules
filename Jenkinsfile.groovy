node{
  stage("Pulling Repo"){
    git 'https://github.com/dilfuza97/GCP_K8_modules.git'
  }

  stage("Terraform"){
    sh "terraform init"
    sh "terraform apply"
  }
}

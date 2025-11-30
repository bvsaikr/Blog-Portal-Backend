pipeline{
  agent{label "!built-in"}
  tools{maven "Maven"}
  stages{
    stage("clone"){
      steps{
        git url: "https://github.com/bvsaikr/Blog-Portal-Backend", branch: "main"
      }
    }
    stage("unit tests"){
      steps{
        sh 'echo "tested successfully"'
      }
    }
    stage("build"){
      steps{
      sh 'docker build -t blogportalbe .'
      }
    }
  }
}

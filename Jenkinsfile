pipeline{
  agent{label "!buit-in"}
  tools{maven "Maven"}
  stages{
    stage("clone"){
      steps{
        git url: "https://github.com/bvsaikr/Blog-Portal-Backend", branch: "main"
      }
    }
    stage("unit tests"){
      steps{
        sh 'mvn clean test"
      }
    }
    stage("build"){
      sh 'docker build -t blogportalbe .'
    }
  }
}

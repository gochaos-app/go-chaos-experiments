app = "Login"
description = "Chaos Experiment for login app" 

job "aws" "ec2" {
    region = "us-west-2"
    config {
        tag = "name:demo_talk" ## search for tag: name = demo_talk in Oregon region
        chaos = "stop"              ## terminate instances    
        count = 1                   ## We have 2 instances in total, terminate only 1
    }
}

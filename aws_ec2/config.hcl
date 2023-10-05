app = "Login"
description = "Chaos Experiment for login app" 

job "aws" "ec2" {
    region = "us-east-1"
    config {
        tag = "name:demo_talk" ## search for tag: name = demo_talk in Virginia region
        chaos = "stop"              ## terminate instances    
        count = 1                   ## We have 2 instances in total, terminate only 1
    }
}

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

job "do" "droplet" {
    config {
        tag = "sg_virtual_conference"
        chaos = "terminate"
        count = 1
    }
}

notification "slack" {
    to   = ["C046AEFD8JV"]
    body = "go-chaos just stopped one instance for SG Virtual Conference"
}

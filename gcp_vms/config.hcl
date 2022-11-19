app = "gcp instances"
description = "Chaos Experiment for gcp vms" 


## Multi environment chaos experiment. 


job "gcp" "vm" {
    project = "myProject-1"
    region = "us-central1-a"
    config {
        tag = "env:qa" 
        chaos = "terminate"         
        count = 9                   
    }
}

job "gcp" "vm" {
    project = "myProject-2"
    region = "us-central1-a"
    config {
        tag = "env:prod" 
        chaos = "terminate"         
        count = 5                   
    }
}
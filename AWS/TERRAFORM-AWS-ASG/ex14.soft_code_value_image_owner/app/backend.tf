terraform { 
backend "s3" { 
bucket = "state-class-silvia" 
key = "path/to/my/key" 
region = "us-east-1" 
} 

} 
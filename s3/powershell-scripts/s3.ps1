Import-Module AWS.Tools.S3

$region = "us-east-1"

$bucketName = Read-Host Prompt "Enter the S3 bucket name: "

Write-Host = "AWS region: $region"
Write-Host = "s3 Bucket: $bucketName"

New-S3Bucket -BucketName $bucketName -Region $region
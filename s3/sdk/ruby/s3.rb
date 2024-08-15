require 'aws-sdk-s3'
require 'pry'
require 'securerandom'

bucket_name = ENV['BUCKET_NAME']
region = "eu-east-1"
puts bucket_name

client = Aws::S3::Client.new

resp = client.create_bucket({
  bucket: "examplebucket", 
  create_bucket_configuration: {
    location_constraint: region, 
  }, 
})

number_of_files = 1 + rand(6)


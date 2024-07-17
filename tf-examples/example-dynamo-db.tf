provider "aws" {
  region = "us-east-2" # Specify your AWS region here
}

resource "aws_dynamodb_table" "my_dynamodb_table" {
  name         = "myTableName"
  billing_mode = "PROVISIONED"

  read_capacity  = 5
  write_capacity = 5

  hash_key  = "Album"
  range_key = "Artist"

  attribute {
    name = "Album"
    type = "S"
  }

  attribute {
    name = "Artist"
    type = "S"
  }

  attribute {
    name = "Sales"
    type = "N"
  }

  attribute {
    name = "NumberOfSongs"
    type = "N"
  }

  global_secondary_index {
    name            = "myGSI"
    hash_key        = "Sales"
    range_key       = "Artist"
    read_capacity   = 5
    write_capacity  = 5
    projection_type = "INCLUDE"
    non_key_attributes = [
      "Album",
      "NumberOfSongs"
    ]
  }

  global_secondary_index {
    name            = "myGSI2"
    hash_key        = "NumberOfSongs"
    range_key       = "Sales"
    read_capacity   = 5
    write_capacity  = 5
    projection_type = "INCLUDE"
    non_key_attributes = [
      "Album",
      "Artist"
    ]
  }

  local_secondary_index {
    name            = "myLSI"
    range_key       = "Sales"
    projection_type = "INCLUDE"
    non_key_attributes = [
      "Artist",
      "NumberOfSongs"
    ]
  }

  tags = {
    Name = "myDynamoDBTable"
  }
}


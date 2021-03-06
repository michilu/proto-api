=begin
#An example of generating swagger via gRPC ecosystem.

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0
Contact: none@example.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::V1ExampleServiceQueryResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'V1ExampleServiceQueryResponse' do
  before do
    # run before each test
    @instance = OpenapiClient::V1ExampleServiceQueryResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of V1ExampleServiceQueryResponse' do
    it 'should create an instance of V1ExampleServiceQueryResponse' do
      expect(@instance).to be_instance_of(OpenapiClient::V1ExampleServiceQueryResponse)
    end
  end
  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

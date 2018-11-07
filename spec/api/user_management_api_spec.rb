=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::UserManagementApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserManagementApi' do
  before do
    # run before each test
    @instance = CyberSource::UserManagementApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserManagementApi' do
    it 'should create an instance of UserManagementApi' do
      expect(@instance).to be_instance_of(CyberSource::UserManagementApi)
    end
  end

  # unit tests for get_users
  # Get user based on organization Id, username, permission and role
  # This endpoint is to get all the user information depending on the filter criteria passed in the query.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :organization_id This is the orgId of the organization which the user belongs to.
  # @option opts [String] :user_name User ID of the user you want to get details on.
  # @option opts [String] :permission_id permission that you are trying to search user on.
  # @option opts [String] :role_id role of the user you are trying to search on.
  # @return [InlineResponse20013]
  describe 'get_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

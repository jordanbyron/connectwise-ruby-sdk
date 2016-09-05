=begin
#Connectwise REST API

#ConnectWise API

OpenAPI spec version: 1.0.0
Contact: platform@connectwise.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'

# Unit tests for Connectwise::ContactCommunicationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ContactCommunicationsApi' do
  before do
    # run before each test
    @instance = Connectwise::ContactCommunicationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactCommunicationsApi' do
    it 'should create an instact of ContactCommunicationsApi' do
      expect(@instance).to be_instance_of(Connectwise::ContactCommunicationsApi)
    end
  end

  # unit tests for company_contacts_id_communications_communication_id_delete
  # 
  # Delete Contact Communication By Id
  # @param id 
  # @param communication_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'company_contacts_id_communications_communication_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_contacts_id_communications_communication_id_get
  # 
  # Get Contact Communication By Id
  # @param id 
  # @param communication_id 
  # @param [Hash] opts the optional parameters
  # @return [ContactCommunication]
  describe 'company_contacts_id_communications_communication_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_contacts_id_communications_communication_id_patch
  # 
  # Update Contact Communication
  # @param id 
  # @param communication_id 
  # @param operations 
  # @param [Hash] opts the optional parameters
  # @return [ContactCommunication]
  describe 'company_contacts_id_communications_communication_id_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_contacts_id_communications_communication_id_put
  # 
  # Replace Contact Communication
  # @param id 
  # @param communication_id 
  # @param contact_communication 
  # @param [Hash] opts the optional parameters
  # @return [ContactCommunication]
  describe 'company_contacts_id_communications_communication_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_contacts_id_communications_count_get
  # 
  # Get Contact Communications Count
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @return [Count]
  describe 'company_contacts_id_communications_count_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_contacts_id_communications_get
  # 
  # Get Contact Communications
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :conditions 
  # @option opts [String] :order_by 
  # @option opts [Integer] :page 
  # @option opts [Integer] :page_size 
  # @return [Array<ContactCommunication>]
  describe 'company_contacts_id_communications_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for company_contacts_id_communications_post
  # 
  # Create Contact Communication
  # @param id 
  # @param contact_communication 
  # @param [Hash] opts the optional parameters
  # @return [ContactCommunication]
  describe 'company_contacts_id_communications_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
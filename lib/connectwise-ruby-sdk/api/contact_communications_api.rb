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

require "uri"

module Connectwise
  class ContactCommunicationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Delete Contact Communication By Id
    # @param id 
    # @param communication_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def company_contacts_id_communications_communication_id_delete(id, communication_id, opts = {})
      company_contacts_id_communications_communication_id_delete_with_http_info(id, communication_id, opts)
      return nil
    end

    # 
    # Delete Contact Communication By Id
    # @param id 
    # @param communication_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def company_contacts_id_communications_communication_id_delete_with_http_info(id, communication_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactCommunicationsApi.company_contacts_id_communications_communication_id_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContactCommunicationsApi.company_contacts_id_communications_communication_id_delete" if id.nil?
      # verify the required parameter 'communication_id' is set
      fail ArgumentError, "Missing the required parameter 'communication_id' when calling ContactCommunicationsApi.company_contacts_id_communications_communication_id_delete" if communication_id.nil?
      # resource path
      local_var_path = "/company/contacts/{id}/communications/{communicationId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'communicationId' + '}', communication_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = []
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactCommunicationsApi#company_contacts_id_communications_communication_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Contact Communication By Id
    # @param id 
    # @param communication_id 
    # @param [Hash] opts the optional parameters
    # @return [ContactCommunication]
    def company_contacts_id_communications_communication_id_get(id, communication_id, opts = {})
      data, _status_code, _headers = company_contacts_id_communications_communication_id_get_with_http_info(id, communication_id, opts)
      return data
    end

    # 
    # Get Contact Communication By Id
    # @param id 
    # @param communication_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactCommunication, Fixnum, Hash)>] ContactCommunication data, response status code and response headers
    def company_contacts_id_communications_communication_id_get_with_http_info(id, communication_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactCommunicationsApi.company_contacts_id_communications_communication_id_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContactCommunicationsApi.company_contacts_id_communications_communication_id_get" if id.nil?
      # verify the required parameter 'communication_id' is set
      fail ArgumentError, "Missing the required parameter 'communication_id' when calling ContactCommunicationsApi.company_contacts_id_communications_communication_id_get" if communication_id.nil?
      # resource path
      local_var_path = "/company/contacts/{id}/communications/{communicationId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'communicationId' + '}', communication_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ContactCommunication')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactCommunicationsApi#company_contacts_id_communications_communication_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Contact Communication
    # @param id 
    # @param communication_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [ContactCommunication]
    def company_contacts_id_communications_communication_id_patch(id, communication_id, operations, opts = {})
      data, _status_code, _headers = company_contacts_id_communications_communication_id_patch_with_http_info(id, communication_id, operations, opts)
      return data
    end

    # 
    # Update Contact Communication
    # @param id 
    # @param communication_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactCommunication, Fixnum, Hash)>] ContactCommunication data, response status code and response headers
    def company_contacts_id_communications_communication_id_patch_with_http_info(id, communication_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactCommunicationsApi.company_contacts_id_communications_communication_id_patch ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContactCommunicationsApi.company_contacts_id_communications_communication_id_patch" if id.nil?
      # verify the required parameter 'communication_id' is set
      fail ArgumentError, "Missing the required parameter 'communication_id' when calling ContactCommunicationsApi.company_contacts_id_communications_communication_id_patch" if communication_id.nil?
      # verify the required parameter 'operations' is set
      fail ArgumentError, "Missing the required parameter 'operations' when calling ContactCommunicationsApi.company_contacts_id_communications_communication_id_patch" if operations.nil?
      # resource path
      local_var_path = "/company/contacts/{id}/communications/{communicationId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'communicationId' + '}', communication_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(operations)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ContactCommunication')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactCommunicationsApi#company_contacts_id_communications_communication_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Contact Communication
    # @param id 
    # @param communication_id 
    # @param contact_communication 
    # @param [Hash] opts the optional parameters
    # @return [ContactCommunication]
    def company_contacts_id_communications_communication_id_put(id, communication_id, contact_communication, opts = {})
      data, _status_code, _headers = company_contacts_id_communications_communication_id_put_with_http_info(id, communication_id, contact_communication, opts)
      return data
    end

    # 
    # Replace Contact Communication
    # @param id 
    # @param communication_id 
    # @param contact_communication 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactCommunication, Fixnum, Hash)>] ContactCommunication data, response status code and response headers
    def company_contacts_id_communications_communication_id_put_with_http_info(id, communication_id, contact_communication, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactCommunicationsApi.company_contacts_id_communications_communication_id_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContactCommunicationsApi.company_contacts_id_communications_communication_id_put" if id.nil?
      # verify the required parameter 'communication_id' is set
      fail ArgumentError, "Missing the required parameter 'communication_id' when calling ContactCommunicationsApi.company_contacts_id_communications_communication_id_put" if communication_id.nil?
      # verify the required parameter 'contact_communication' is set
      fail ArgumentError, "Missing the required parameter 'contact_communication' when calling ContactCommunicationsApi.company_contacts_id_communications_communication_id_put" if contact_communication.nil?
      # resource path
      local_var_path = "/company/contacts/{id}/communications/{communicationId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'communicationId' + '}', communication_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(contact_communication)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ContactCommunication')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactCommunicationsApi#company_contacts_id_communications_communication_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Contact Communications Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def company_contacts_id_communications_count_get(id, opts = {})
      data, _status_code, _headers = company_contacts_id_communications_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Contact Communications Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def company_contacts_id_communications_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactCommunicationsApi.company_contacts_id_communications_count_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContactCommunicationsApi.company_contacts_id_communications_count_get" if id.nil?
      # resource path
      local_var_path = "/company/contacts/{id}/communications/count".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Count')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactCommunicationsApi#company_contacts_id_communications_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Contact Communications
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<ContactCommunication>]
    def company_contacts_id_communications_get(id, opts = {})
      data, _status_code, _headers = company_contacts_id_communications_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Contact Communications
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<ContactCommunication>, Fixnum, Hash)>] Array<ContactCommunication> data, response status code and response headers
    def company_contacts_id_communications_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactCommunicationsApi.company_contacts_id_communications_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContactCommunicationsApi.company_contacts_id_communications_get" if id.nil?
      # resource path
      local_var_path = "/company/contacts/{id}/communications".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<ContactCommunication>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactCommunicationsApi#company_contacts_id_communications_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Contact Communication
    # @param id 
    # @param contact_communication 
    # @param [Hash] opts the optional parameters
    # @return [ContactCommunication]
    def company_contacts_id_communications_post(id, contact_communication, opts = {})
      data, _status_code, _headers = company_contacts_id_communications_post_with_http_info(id, contact_communication, opts)
      return data
    end

    # 
    # Create Contact Communication
    # @param id 
    # @param contact_communication 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactCommunication, Fixnum, Hash)>] ContactCommunication data, response status code and response headers
    def company_contacts_id_communications_post_with_http_info(id, contact_communication, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ContactCommunicationsApi.company_contacts_id_communications_post ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ContactCommunicationsApi.company_contacts_id_communications_post" if id.nil?
      # verify the required parameter 'contact_communication' is set
      fail ArgumentError, "Missing the required parameter 'contact_communication' when calling ContactCommunicationsApi.company_contacts_id_communications_post" if contact_communication.nil?
      # resource path
      local_var_path = "/company/contacts/{id}/communications".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(contact_communication)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ContactCommunication')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactCommunicationsApi#company_contacts_id_communications_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

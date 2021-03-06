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
  class SurveyResultsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Survey Results Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Count]
    def service_surveys_id_results_count_get(id, opts = {})
      data, _status_code, _headers = service_surveys_id_results_count_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Survey Results Count
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def service_surveys_id_results_count_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyResultsApi.service_surveys_id_results_count_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SurveyResultsApi.service_surveys_id_results_count_get" if id.nil?
      # resource path
      local_var_path = "/service/surveys/{id}/results/count".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: SurveyResultsApi#service_surveys_id_results_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Survey Results
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<SurveyResult>]
    def service_surveys_id_results_get(id, opts = {})
      data, _status_code, _headers = service_surveys_id_results_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Survey Results
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<SurveyResult>, Fixnum, Hash)>] Array<SurveyResult> data, response status code and response headers
    def service_surveys_id_results_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyResultsApi.service_surveys_id_results_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SurveyResultsApi.service_surveys_id_results_get" if id.nil?
      # resource path
      local_var_path = "/service/surveys/{id}/results".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<SurveyResult>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyResultsApi#service_surveys_id_results_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Survey Result
    # @param id 
    # @param survey_result 
    # @param [Hash] opts the optional parameters
    # @return [SurveyResult]
    def service_surveys_id_results_post(id, survey_result, opts = {})
      data, _status_code, _headers = service_surveys_id_results_post_with_http_info(id, survey_result, opts)
      return data
    end

    # 
    # Create Survey Result
    # @param id 
    # @param survey_result 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyResult, Fixnum, Hash)>] SurveyResult data, response status code and response headers
    def service_surveys_id_results_post_with_http_info(id, survey_result, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyResultsApi.service_surveys_id_results_post ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SurveyResultsApi.service_surveys_id_results_post" if id.nil?
      # verify the required parameter 'survey_result' is set
      fail ArgumentError, "Missing the required parameter 'survey_result' when calling SurveyResultsApi.service_surveys_id_results_post" if survey_result.nil?
      # resource path
      local_var_path = "/service/surveys/{id}/results".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(survey_result)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SurveyResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyResultsApi#service_surveys_id_results_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Survey Result By Id
    # @param id 
    # @param result_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def service_surveys_id_results_result_id_delete(id, result_id, opts = {})
      service_surveys_id_results_result_id_delete_with_http_info(id, result_id, opts)
      return nil
    end

    # 
    # Delete Survey Result By Id
    # @param id 
    # @param result_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def service_surveys_id_results_result_id_delete_with_http_info(id, result_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyResultsApi.service_surveys_id_results_result_id_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SurveyResultsApi.service_surveys_id_results_result_id_delete" if id.nil?
      # verify the required parameter 'result_id' is set
      fail ArgumentError, "Missing the required parameter 'result_id' when calling SurveyResultsApi.service_surveys_id_results_result_id_delete" if result_id.nil?
      # resource path
      local_var_path = "/service/surveys/{id}/results/{resultId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'resultId' + '}', result_id.to_s)

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
        @api_client.config.logger.debug "API called: SurveyResultsApi#service_surveys_id_results_result_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Survey Result By Id
    # @param id 
    # @param result_id 
    # @param [Hash] opts the optional parameters
    # @return [SurveyResult]
    def service_surveys_id_results_result_id_get(id, result_id, opts = {})
      data, _status_code, _headers = service_surveys_id_results_result_id_get_with_http_info(id, result_id, opts)
      return data
    end

    # 
    # Get Survey Result By Id
    # @param id 
    # @param result_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyResult, Fixnum, Hash)>] SurveyResult data, response status code and response headers
    def service_surveys_id_results_result_id_get_with_http_info(id, result_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyResultsApi.service_surveys_id_results_result_id_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SurveyResultsApi.service_surveys_id_results_result_id_get" if id.nil?
      # verify the required parameter 'result_id' is set
      fail ArgumentError, "Missing the required parameter 'result_id' when calling SurveyResultsApi.service_surveys_id_results_result_id_get" if result_id.nil?
      # resource path
      local_var_path = "/service/surveys/{id}/results/{resultId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'resultId' + '}', result_id.to_s)

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
        :return_type => 'SurveyResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyResultsApi#service_surveys_id_results_result_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Survey Result
    # @param id 
    # @param result_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [SurveyResult]
    def service_surveys_id_results_result_id_patch(id, result_id, operations, opts = {})
      data, _status_code, _headers = service_surveys_id_results_result_id_patch_with_http_info(id, result_id, operations, opts)
      return data
    end

    # 
    # Update Survey Result
    # @param id 
    # @param result_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyResult, Fixnum, Hash)>] SurveyResult data, response status code and response headers
    def service_surveys_id_results_result_id_patch_with_http_info(id, result_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyResultsApi.service_surveys_id_results_result_id_patch ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SurveyResultsApi.service_surveys_id_results_result_id_patch" if id.nil?
      # verify the required parameter 'result_id' is set
      fail ArgumentError, "Missing the required parameter 'result_id' when calling SurveyResultsApi.service_surveys_id_results_result_id_patch" if result_id.nil?
      # verify the required parameter 'operations' is set
      fail ArgumentError, "Missing the required parameter 'operations' when calling SurveyResultsApi.service_surveys_id_results_result_id_patch" if operations.nil?
      # resource path
      local_var_path = "/service/surveys/{id}/results/{resultId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'resultId' + '}', result_id.to_s)

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
        :return_type => 'SurveyResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyResultsApi#service_surveys_id_results_result_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Survey Result
    # @param id 
    # @param result_id 
    # @param survey_result 
    # @param [Hash] opts the optional parameters
    # @return [SurveyResult]
    def service_surveys_id_results_result_id_put(id, result_id, survey_result, opts = {})
      data, _status_code, _headers = service_surveys_id_results_result_id_put_with_http_info(id, result_id, survey_result, opts)
      return data
    end

    # 
    # Replace Survey Result
    # @param id 
    # @param result_id 
    # @param survey_result 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SurveyResult, Fixnum, Hash)>] SurveyResult data, response status code and response headers
    def service_surveys_id_results_result_id_put_with_http_info(id, result_id, survey_result, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SurveyResultsApi.service_surveys_id_results_result_id_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SurveyResultsApi.service_surveys_id_results_result_id_put" if id.nil?
      # verify the required parameter 'result_id' is set
      fail ArgumentError, "Missing the required parameter 'result_id' when calling SurveyResultsApi.service_surveys_id_results_result_id_put" if result_id.nil?
      # verify the required parameter 'survey_result' is set
      fail ArgumentError, "Missing the required parameter 'survey_result' when calling SurveyResultsApi.service_surveys_id_results_result_id_put" if survey_result.nil?
      # resource path
      local_var_path = "/service/surveys/{id}/results/{resultId}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s).sub('{' + 'resultId' + '}', result_id.to_s)

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
      post_body = @api_client.object_to_http_body(survey_result)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SurveyResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SurveyResultsApi#service_surveys_id_results_result_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require "uri"

module SmoochApi
  class IntegrationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Create an integration for the specified app.
    # @param app_id Identifies the app.
    # @param integration_create_body Body for a createIntegration request. Additional arguments are necessary based on integration type. For detailed instructions, visit our [official docs](https://docs.smooch.io/rest/#create-integration) 
    # @param [Hash] opts the optional parameters
    # @return [IntegrationResponse]
    def create_integration(app_id, integration_create_body, opts = {})
      data, _status_code, _headers = create_integration_with_http_info(app_id, integration_create_body, opts)
      return data
    end

    # 
    # Create an integration for the specified app.
    # @param app_id Identifies the app.
    # @param integration_create_body Body for a createIntegration request. Additional arguments are necessary based on integration type. For detailed instructions, visit our [official docs](https://docs.smooch.io/rest/#create-integration) 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationResponse, Fixnum, Hash)>] IntegrationResponse data, response status code and response headers
    def create_integration_with_http_info(app_id, integration_create_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.create_integration ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling IntegrationApi.create_integration"
      end
      # verify the required parameter 'integration_create_body' is set
      if @api_client.config.client_side_validation && integration_create_body.nil?
        fail ArgumentError, "Missing the required parameter 'integration_create_body' when calling IntegrationApi.create_integration"
      end
      # resource path
      local_var_path = "/apps/{appId}/integrations".sub('{' + 'appId' + '}', app_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(integration_create_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IntegrationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#create_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create the specified integration’s menu, overriding the app menu if configured.
    # @param app_id Identifies the app.
    # @param integration_id Identifies the integration.
    # @param menu_create_body Body for a createMenu request.
    # @param [Hash] opts the optional parameters
    # @return [MenuResponse]
    def create_integration_menu(app_id, integration_id, menu_create_body, opts = {})
      data, _status_code, _headers = create_integration_menu_with_http_info(app_id, integration_id, menu_create_body, opts)
      return data
    end

    # 
    # Create the specified integration’s menu, overriding the app menu if configured.
    # @param app_id Identifies the app.
    # @param integration_id Identifies the integration.
    # @param menu_create_body Body for a createMenu request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MenuResponse, Fixnum, Hash)>] MenuResponse data, response status code and response headers
    def create_integration_menu_with_http_info(app_id, integration_id, menu_create_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.create_integration_menu ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling IntegrationApi.create_integration_menu"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationApi.create_integration_menu"
      end
      # verify the required parameter 'menu_create_body' is set
      if @api_client.config.client_side_validation && menu_create_body.nil?
        fail ArgumentError, "Missing the required parameter 'menu_create_body' when calling IntegrationApi.create_integration_menu"
      end
      # resource path
      local_var_path = "/apps/{appId}/integrations/{integrationId}/menu".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'integrationId' + '}', integration_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(menu_create_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MenuResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#create_integration_menu\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete the specified integration.
    # @param app_id Identifies the app.
    # @param integration_id Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_integration(app_id, integration_id, opts = {})
      delete_integration_with_http_info(app_id, integration_id, opts)
      return nil
    end

    # 
    # Delete the specified integration.
    # @param app_id Identifies the app.
    # @param integration_id Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_integration_with_http_info(app_id, integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.delete_integration ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling IntegrationApi.delete_integration"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationApi.delete_integration"
      end
      # resource path
      local_var_path = "/apps/{appId}/integrations/{integrationId}".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'integrationId' + '}', integration_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#delete_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete the specified integration’s menu.
    # @param app_id Identifies the app.
    # @param integration_id Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_integration_menu(app_id, integration_id, opts = {})
      delete_integration_menu_with_http_info(app_id, integration_id, opts)
      return nil
    end

    # 
    # Delete the specified integration’s menu.
    # @param app_id Identifies the app.
    # @param integration_id Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_integration_menu_with_http_info(app_id, integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.delete_integration_menu ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling IntegrationApi.delete_integration_menu"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationApi.delete_integration_menu"
      end
      # resource path
      local_var_path = "/apps/{appId}/integrations/{integrationId}/menu".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'integrationId' + '}', integration_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#delete_integration_menu\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified integration.
    # @param app_id Identifies the app.
    # @param integration_id Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [IntegrationResponse]
    def get_integration(app_id, integration_id, opts = {})
      data, _status_code, _headers = get_integration_with_http_info(app_id, integration_id, opts)
      return data
    end

    # 
    # Get the specified integration.
    # @param app_id Identifies the app.
    # @param integration_id Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationResponse, Fixnum, Hash)>] IntegrationResponse data, response status code and response headers
    def get_integration_with_http_info(app_id, integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.get_integration ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling IntegrationApi.get_integration"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationApi.get_integration"
      end
      # resource path
      local_var_path = "/apps/{appId}/integrations/{integrationId}".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'integrationId' + '}', integration_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IntegrationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#get_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get the specified integration's menu.
    # @param app_id Identifies the app.
    # @param integration_id Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [MenuResponse]
    def get_integration_menu(app_id, integration_id, opts = {})
      data, _status_code, _headers = get_integration_menu_with_http_info(app_id, integration_id, opts)
      return data
    end

    # 
    # Get the specified integration&#39;s menu.
    # @param app_id Identifies the app.
    # @param integration_id Identifies the integration.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MenuResponse, Fixnum, Hash)>] MenuResponse data, response status code and response headers
    def get_integration_menu_with_http_info(app_id, integration_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.get_integration_menu ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling IntegrationApi.get_integration_menu"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationApi.get_integration_menu"
      end
      # resource path
      local_var_path = "/apps/{appId}/integrations/{integrationId}/menu".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'integrationId' + '}', integration_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MenuResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#get_integration_menu\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # List integrations for the specified app.
    # @param app_id Identifies the app.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :types List of types to filter the query by. More than one value can be specified through comma separation e.g. ?types&#x3D;*twilio*,*line*. 
    # @return [ListIntegrationsResponse]
    def list_integrations(app_id, opts = {})
      data, _status_code, _headers = list_integrations_with_http_info(app_id, opts)
      return data
    end

    # 
    # List integrations for the specified app.
    # @param app_id Identifies the app.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :types List of types to filter the query by. More than one value can be specified through comma separation e.g. ?types&#x3D;*twilio*,*line*. 
    # @return [Array<(ListIntegrationsResponse, Fixnum, Hash)>] ListIntegrationsResponse data, response status code and response headers
    def list_integrations_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.list_integrations ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling IntegrationApi.list_integrations"
      end
      # resource path
      local_var_path = "/apps/{appId}/integrations".sub('{' + 'appId' + '}', app_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'types'] = opts[:'types'] if !opts[:'types'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ListIntegrationsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#list_integrations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update the specified integration.
    # @param app_id Identifies the app.
    # @param integration_id Identifies the integration.
    # @param integration_update_body Body for a updateIntegration request. Additional arguments are necessary based on integration type. For detailed instructions, visit our [official docs](https://docs.smooch.io/rest/#create-integration) 
    # @param [Hash] opts the optional parameters
    # @return [IntegrationResponse]
    def update_integration(app_id, integration_id, integration_update_body, opts = {})
      data, _status_code, _headers = update_integration_with_http_info(app_id, integration_id, integration_update_body, opts)
      return data
    end

    # 
    # Update the specified integration.
    # @param app_id Identifies the app.
    # @param integration_id Identifies the integration.
    # @param integration_update_body Body for a updateIntegration request. Additional arguments are necessary based on integration type. For detailed instructions, visit our [official docs](https://docs.smooch.io/rest/#create-integration) 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IntegrationResponse, Fixnum, Hash)>] IntegrationResponse data, response status code and response headers
    def update_integration_with_http_info(app_id, integration_id, integration_update_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.update_integration ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling IntegrationApi.update_integration"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationApi.update_integration"
      end
      # verify the required parameter 'integration_update_body' is set
      if @api_client.config.client_side_validation && integration_update_body.nil?
        fail ArgumentError, "Missing the required parameter 'integration_update_body' when calling IntegrationApi.update_integration"
      end
      # resource path
      local_var_path = "/apps/{appId}/integrations/{integrationId}".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'integrationId' + '}', integration_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(integration_update_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IntegrationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#update_integration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update the specified integration’s menu.
    # @param app_id Identifies the app.
    # @param integration_id Identifies the integration.
    # @param menu_update_body Body for a updateMenu request.
    # @param [Hash] opts the optional parameters
    # @return [MenuResponse]
    def update_integration_menu(app_id, integration_id, menu_update_body, opts = {})
      data, _status_code, _headers = update_integration_menu_with_http_info(app_id, integration_id, menu_update_body, opts)
      return data
    end

    # 
    # Update the specified integration’s menu.
    # @param app_id Identifies the app.
    # @param integration_id Identifies the integration.
    # @param menu_update_body Body for a updateMenu request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MenuResponse, Fixnum, Hash)>] MenuResponse data, response status code and response headers
    def update_integration_menu_with_http_info(app_id, integration_id, menu_update_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: IntegrationApi.update_integration_menu ..."
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling IntegrationApi.update_integration_menu"
      end
      # verify the required parameter 'integration_id' is set
      if @api_client.config.client_side_validation && integration_id.nil?
        fail ArgumentError, "Missing the required parameter 'integration_id' when calling IntegrationApi.update_integration_menu"
      end
      # verify the required parameter 'menu_update_body' is set
      if @api_client.config.client_side_validation && menu_update_body.nil?
        fail ArgumentError, "Missing the required parameter 'menu_update_body' when calling IntegrationApi.update_integration_menu"
      end
      # resource path
      local_var_path = "/apps/{appId}/integrations/{integrationId}/menu".sub('{' + 'appId' + '}', app_id.to_s).sub('{' + 'integrationId' + '}', integration_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(menu_update_body)
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MenuResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationApi#update_integration_menu\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

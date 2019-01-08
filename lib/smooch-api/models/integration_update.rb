=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 5.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module SmoochApi

  class IntegrationUpdate
    # This color will be used in the messenger header and the button or tab in idle state. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :brandColor

    # When `true`, the introduction pane will be pinned at the top of the conversation instead of scrolling with it. The default value is `false`. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :fixedIntroPane

    # This color will be used for customer messages, quick replies and actions in the footer. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :conversationColor

    # This color will be used for call-to-actions inside your messages. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :actionColor

    # Choose how the messenger will appear on your website. Must be either button or tab. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :displayStyle

    # With the button style Web Messenger, you have the option of selecting your own button icon. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :buttonIconUrl

    # With the button style Web Messenger, you have the option of specifying its width. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :buttonWidth

    # With the button style Web Messenger, you have the option of specifying its height. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :buttonHeight

    # Array of integration IDs, order will be reflected in the Web Messenger. When set, only integrations from this list will be displayed in the Web Messenger. If unset, all integrations will be displayed (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :integrationOrder

    # A custom business name for the Web Messenger. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :businessName

    # A custom business icon url for the Web Messenger. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :businessIconUrl

    # A custom background url for the Web Messenger. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :backgroundImageUrl

    # A list of origins to whitelist. When set, only the origins from this list will be able to initialize the Web Messenger. If unset, all origins are whitelisted. The elements in the list should follow the serialized-origin format from RFC 6454 `scheme \"://\" host [ \":\" port ]`, where scheme is `http` or `https`. (Optional) Used for *Web Messenger* integrations. 
    attr_accessor :originWhitelist

    # LINE Channel ID. Required for *line* integrations. 
    attr_accessor :channelId

    # LINE Channel Secret. Required for *line* integrations. 
    attr_accessor :channelSecret

    # Specification of a fallback language. (Optional) Used for *WhatsApp* integrations. 
    attr_accessor :hsmFallbackLanguage


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'brandColor' => :'brandColor',
        :'fixedIntroPane' => :'fixedIntroPane',
        :'conversationColor' => :'conversationColor',
        :'actionColor' => :'actionColor',
        :'displayStyle' => :'displayStyle',
        :'buttonIconUrl' => :'buttonIconUrl',
        :'buttonWidth' => :'buttonWidth',
        :'buttonHeight' => :'buttonHeight',
        :'integrationOrder' => :'integrationOrder',
        :'businessName' => :'businessName',
        :'businessIconUrl' => :'businessIconUrl',
        :'backgroundImageUrl' => :'backgroundImageUrl',
        :'originWhitelist' => :'originWhitelist',
        :'channelId' => :'channelId',
        :'channelSecret' => :'channelSecret',
        :'hsmFallbackLanguage' => :'hsmFallbackLanguage'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'brandColor' => :'String',
        :'fixedIntroPane' => :'BOOLEAN',
        :'conversationColor' => :'String',
        :'actionColor' => :'String',
        :'displayStyle' => :'String',
        :'buttonIconUrl' => :'String',
        :'buttonWidth' => :'String',
        :'buttonHeight' => :'String',
        :'integrationOrder' => :'Array<String>',
        :'businessName' => :'String',
        :'businessIconUrl' => :'String',
        :'backgroundImageUrl' => :'String',
        :'originWhitelist' => :'Array<String>',
        :'channelId' => :'String',
        :'channelSecret' => :'String',
        :'hsmFallbackLanguage' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'brandColor')
        self.brandColor = attributes[:'brandColor']
      end

      if attributes.has_key?(:'fixedIntroPane')
        self.fixedIntroPane = attributes[:'fixedIntroPane']
      end

      if attributes.has_key?(:'conversationColor')
        self.conversationColor = attributes[:'conversationColor']
      end

      if attributes.has_key?(:'actionColor')
        self.actionColor = attributes[:'actionColor']
      end

      if attributes.has_key?(:'displayStyle')
        self.displayStyle = attributes[:'displayStyle']
      end

      if attributes.has_key?(:'buttonIconUrl')
        self.buttonIconUrl = attributes[:'buttonIconUrl']
      end

      if attributes.has_key?(:'buttonWidth')
        self.buttonWidth = attributes[:'buttonWidth']
      end

      if attributes.has_key?(:'buttonHeight')
        self.buttonHeight = attributes[:'buttonHeight']
      end

      if attributes.has_key?(:'integrationOrder')
        if (value = attributes[:'integrationOrder']).is_a?(Array)
          self.integrationOrder = value
        end
      end

      if attributes.has_key?(:'businessName')
        self.businessName = attributes[:'businessName']
      end

      if attributes.has_key?(:'businessIconUrl')
        self.businessIconUrl = attributes[:'businessIconUrl']
      end

      if attributes.has_key?(:'backgroundImageUrl')
        self.backgroundImageUrl = attributes[:'backgroundImageUrl']
      end

      if attributes.has_key?(:'originWhitelist')
        if (value = attributes[:'originWhitelist']).is_a?(Array)
          self.originWhitelist = value
        end
      end

      if attributes.has_key?(:'channelId')
        self.channelId = attributes[:'channelId']
      end

      if attributes.has_key?(:'channelSecret')
        self.channelSecret = attributes[:'channelSecret']
      end

      if attributes.has_key?(:'hsmFallbackLanguage')
        self.hsmFallbackLanguage = attributes[:'hsmFallbackLanguage']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          brandColor == o.brandColor &&
          fixedIntroPane == o.fixedIntroPane &&
          conversationColor == o.conversationColor &&
          actionColor == o.actionColor &&
          displayStyle == o.displayStyle &&
          buttonIconUrl == o.buttonIconUrl &&
          buttonWidth == o.buttonWidth &&
          buttonHeight == o.buttonHeight &&
          integrationOrder == o.integrationOrder &&
          businessName == o.businessName &&
          businessIconUrl == o.businessIconUrl &&
          backgroundImageUrl == o.backgroundImageUrl &&
          originWhitelist == o.originWhitelist &&
          channelId == o.channelId &&
          channelSecret == o.channelSecret &&
          hsmFallbackLanguage == o.hsmFallbackLanguage
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [brandColor, fixedIntroPane, conversationColor, actionColor, displayStyle, buttonIconUrl, buttonWidth, buttonHeight, integrationOrder, businessName, businessIconUrl, backgroundImageUrl, originWhitelist, channelId, channelSecret, hsmFallbackLanguage].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SmoochApi.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end

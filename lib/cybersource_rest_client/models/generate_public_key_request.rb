=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class GeneratePublicKeyRequest
    # How the card number should be encrypted in the subsequent Tokenize Card request. Possible values are RsaOaep256 or None (if using this value the card number must be in plain text when included in the Tokenize Card request). The Tokenize Card request uses a secure connection (TLS 1.2+) regardless of what encryption type is specified.
    attr_accessor :encryption_type

    # This should only be used if using the Microform implementation. This is the protocol, URL, and if used, port number of the page that will host the Microform. Unless using http://localhost, the protocol must be https://. For example, if serving Microform on example.com, the targetOrigin is https://example.com The value is used to restrict the frame ancestor of the Microform. If there is a mismatch between this value and the frame ancestor, the Microfrom will not load.
    attr_accessor :target_origin

    # Specifies the number of card number digits to be returned un-masked from the left. For example, setting this value to 6 will return: 411111XXXXXXXXXX Default value: 6 Maximum value: 6
    attr_accessor :unmasked_left

    # Specifies the number of card number digits to be returned un-masked from the right. For example, setting this value to 4 will return: 411111XXXXXX1111 Default value: 4 Maximum value: 4
    attr_accessor :unmasked_right

    # Specifies whether or not 'dummy' address data should be specified in the create token request. If you have 'Relaxed AVS' enabled for your MID, this value can be set to False.Default value: true
    attr_accessor :enable_billing_address

    # Three character ISO currency code to be associated with the token. Required for legacy integrations. Default value: USD.
    attr_accessor :currency

    # Specifies whether or not an account verification authorization ($0 Authorization) is carried out on token creation. Default is false, as it is assumed a full or zero amount authorization will be carried out in a separate call from your server.
    attr_accessor :enable_auto_auth

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'encryption_type' => :'encryptionType',
        :'target_origin' => :'targetOrigin',
        :'unmasked_left' => :'unmaskedLeft',
        :'unmasked_right' => :'unmaskedRight',
        :'enable_billing_address' => :'enableBillingAddress',
        :'currency' => :'currency',
        :'enable_auto_auth' => :'enableAutoAuth'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'encryption_type' => :'String',
        :'target_origin' => :'String',
        :'unmasked_left' => :'Integer',
        :'unmasked_right' => :'Integer',
        :'enable_billing_address' => :'BOOLEAN',
        :'currency' => :'String',
        :'enable_auto_auth' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'encryptionType')
        self.encryption_type = attributes[:'encryptionType']
      end

      if attributes.has_key?(:'targetOrigin')
        self.target_origin = attributes[:'targetOrigin']
      end

      if attributes.has_key?(:'unmaskedLeft')
        self.unmasked_left = attributes[:'unmaskedLeft']
      end

      if attributes.has_key?(:'unmaskedRight')
        self.unmasked_right = attributes[:'unmaskedRight']
      end

      if attributes.has_key?(:'enableBillingAddress')
        self.enable_billing_address = attributes[:'enableBillingAddress']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'enableAutoAuth')
        self.enable_auto_auth = attributes[:'enableAutoAuth']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @encryption_type.nil?
        invalid_properties.push('invalid value for "encryption_type", encryption_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @encryption_type.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          encryption_type == o.encryption_type &&
          target_origin == o.target_origin &&
          unmasked_left == o.unmasked_left &&
          unmasked_right == o.unmasked_right &&
          enable_billing_address == o.enable_billing_address &&
          currency == o.currency &&
          enable_auto_auth == o.enable_auto_auth
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [encryption_type, target_origin, unmasked_left, unmasked_right, enable_billing_address, currency, enable_auto_auth].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
        temp_model = CyberSource.const_get(type).new
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
        value.compact.map { |v| _to_hash(v) }
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

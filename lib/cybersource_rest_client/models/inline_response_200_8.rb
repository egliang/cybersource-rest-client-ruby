=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  # Report Log
  class InlineResponse2008
    # CyberSource merchant id
    attr_accessor :organization_id

    # Report ID Value
    attr_accessor :report_id

    # Report definition Id
    attr_accessor :report_definition_id

    # Report Name
    attr_accessor :report_name

    # Report Format
    attr_accessor :report_mime_type

    # Report Frequency Value
    attr_accessor :report_frequency

    # List of Integer Values
    attr_accessor :report_fields

    # Report Status Value
    attr_accessor :report_status

    # Report Start Time Value
    attr_accessor :report_start_time

    # Report End Time Value
    attr_accessor :report_end_time

    # Time Zone Value
    attr_accessor :timezone

    # Report Filters
    attr_accessor :report_filters

    attr_accessor :report_preferences

    # Selected Merchant Group name
    attr_accessor :selected_merchant_group_name

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'organization_id' => :'organizationId',
        :'report_id' => :'reportId',
        :'report_definition_id' => :'reportDefinitionId',
        :'report_name' => :'reportName',
        :'report_mime_type' => :'reportMimeType',
        :'report_frequency' => :'reportFrequency',
        :'report_fields' => :'reportFields',
        :'report_status' => :'reportStatus',
        :'report_start_time' => :'reportStartTime',
        :'report_end_time' => :'reportEndTime',
        :'timezone' => :'timezone',
        :'report_filters' => :'reportFilters',
        :'report_preferences' => :'reportPreferences',
        :'selected_merchant_group_name' => :'selectedMerchantGroupName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'organization_id' => :'String',
        :'report_id' => :'String',
        :'report_definition_id' => :'String',
        :'report_name' => :'String',
        :'report_mime_type' => :'String',
        :'report_frequency' => :'String',
        :'report_fields' => :'Array<String>',
        :'report_status' => :'String',
        :'report_start_time' => :'DateTime',
        :'report_end_time' => :'DateTime',
        :'timezone' => :'String',
        :'report_filters' => :'Hash<String, Array<String>>',
        :'report_preferences' => :'InlineResponse2006ReportPreferences',
        :'selected_merchant_group_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'organizationId')
        self.organization_id = attributes[:'organizationId']
      end

      if attributes.has_key?(:'reportId')
        self.report_id = attributes[:'reportId']
      end

      if attributes.has_key?(:'reportDefinitionId')
        self.report_definition_id = attributes[:'reportDefinitionId']
      end

      if attributes.has_key?(:'reportName')
        self.report_name = attributes[:'reportName']
      end

      if attributes.has_key?(:'reportMimeType')
        self.report_mime_type = attributes[:'reportMimeType']
      end

      if attributes.has_key?(:'reportFrequency')
        self.report_frequency = attributes[:'reportFrequency']
      end

      if attributes.has_key?(:'reportFields')
        if (value = attributes[:'reportFields']).is_a?(Array)
          self.report_fields = value
        end
      end

      if attributes.has_key?(:'reportStatus')
        self.report_status = attributes[:'reportStatus']
      end

      if attributes.has_key?(:'reportStartTime')
        self.report_start_time = attributes[:'reportStartTime']
      end

      if attributes.has_key?(:'reportEndTime')
        self.report_end_time = attributes[:'reportEndTime']
      end

      if attributes.has_key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.has_key?(:'reportFilters')
        if (value = attributes[:'reportFilters']).is_a?(Hash)
          self.report_filters = value
        end
      end

      if attributes.has_key?(:'reportPreferences')
        self.report_preferences = attributes[:'reportPreferences']
      end

      if attributes.has_key?(:'selectedMerchantGroupName')
        self.selected_merchant_group_name = attributes[:'selectedMerchantGroupName']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      report_mime_type_validator = EnumAttributeValidator.new('String', ['application/xml', 'text/csv'])
      return false unless report_mime_type_validator.valid?(@report_mime_type)
      report_frequency_validator = EnumAttributeValidator.new('String', ['DAILY', 'WEEKLY', 'MONTHLY'])
      return false unless report_frequency_validator.valid?(@report_frequency)
      report_status_validator = EnumAttributeValidator.new('String', ['COMPLETED', 'PENDING', 'QUEUED', 'RUNNING', 'ERROR', 'NO_DATA', 'RERUN'])
      return false unless report_status_validator.valid?(@report_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] report_mime_type Object to be assigned
    def report_mime_type=(report_mime_type)
      validator = EnumAttributeValidator.new('String', ['application/xml', 'text/csv'])
      unless validator.valid?(report_mime_type)
        fail ArgumentError, 'invalid value for "report_mime_type", must be one of #{validator.allowable_values}.'
      end
      @report_mime_type = report_mime_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] report_frequency Object to be assigned
    def report_frequency=(report_frequency)
      validator = EnumAttributeValidator.new('String', ['DAILY', 'WEEKLY', 'MONTHLY'])
      unless validator.valid?(report_frequency)
        fail ArgumentError, 'invalid value for "report_frequency", must be one of #{validator.allowable_values}.'
      end
      @report_frequency = report_frequency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] report_status Object to be assigned
    def report_status=(report_status)
      validator = EnumAttributeValidator.new('String', ['COMPLETED', 'PENDING', 'QUEUED', 'RUNNING', 'ERROR', 'NO_DATA', 'RERUN'])
      unless validator.valid?(report_status)
        fail ArgumentError, 'invalid value for "report_status", must be one of #{validator.allowable_values}.'
      end
      @report_status = report_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          organization_id == o.organization_id &&
          report_id == o.report_id &&
          report_definition_id == o.report_definition_id &&
          report_name == o.report_name &&
          report_mime_type == o.report_mime_type &&
          report_frequency == o.report_frequency &&
          report_fields == o.report_fields &&
          report_status == o.report_status &&
          report_start_time == o.report_start_time &&
          report_end_time == o.report_end_time &&
          timezone == o.timezone &&
          report_filters == o.report_filters &&
          report_preferences == o.report_preferences &&
          selected_merchant_group_name == o.selected_merchant_group_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [organization_id, report_id, report_definition_id, report_name, report_mime_type, report_frequency, report_fields, report_status, report_start_time, report_end_time, timezone, report_filters, report_preferences, selected_merchant_group_name].hash
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

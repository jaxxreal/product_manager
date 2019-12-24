class UpcValidator < ActiveModel::EachValidator
    def validate_each(record, attr_name, value)
        unless value.size == 10 or value.size == 12 or value.size == 13
            record.errors[attr_name] << (options[:message] || 'length must be 10 or 12 or 13!')
        end
    end
end
class AvailableOnValidator < ActiveModel::EachValidator
    def validate_each(record, attr_name, value)
        if value.nil?
            # record.errors[attr_name] << (options[:message] || 'must be presented!')
            return
        end
        if value < Time.current
            record.errors[attr_name] << (options[:message] || 'must be in future!')
        end
    end
end
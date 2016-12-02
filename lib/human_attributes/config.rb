module HumanAttributes
  module Config
    NUMBER_TYPES = %i{currency number size percentage phone delimiter precision}
    TYPES = NUMBER_TYPES + [:date]

    def numeric_type?(type)
      NUMBER_TYPES.include?(type)
    end

    def known_type?(type)
      TYPES.include?(type)
    end

    def date_type?(type)
      type == :date
    end

    def raise_error(error_class)
      raise "HumanAttributes::Error::#{error_class}".constantize.new
    end
  end
end
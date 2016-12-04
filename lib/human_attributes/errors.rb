module HumanAttributes
  module Error
    class NotImplemented < Exception
      def initialize
        super("formatter not implemented")
      end
    end

    class InvalidHumanizeConfig < Exception
      def initialize
        super("humanize options needs to be a Hash")
      end
    end

    class NotEnumerizeAttribute < Exception
      def initialize
        super("needs to be an Enumerize::Value object")
      end
    end

    class MissingFormatterOption < Exception
      def initialize
        super("custom type needs formatter option with a proc")
      end
    end

    class InvalidType < Exception
      def initialize
        types = HumanAttributes::Config::TYPES.map { |t| t[:name] }
        super("type needs to be one of: #{types.join(', ')}")
      end
    end

    class RequiredAttributeType < Exception
      def initialize
        super("type is required")
      end
    end

    class InvalidAttributeOptions < Exception
      def initialize
        super("options needs to be a Hash")
      end
    end
  end
end

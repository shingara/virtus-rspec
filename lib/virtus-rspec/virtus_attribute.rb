module Virtus
  module Matchers

    class HaveAttributeMatcher
      def initialize(*attrs)
        @attributes = attrs.collect(&:to_sym)
      end

      def matches?(klass)
        @klass = klass.is_a?(Class) ? klass : klass.class
        @errors = []
        @attributes.each do |attr|
          unless @klass.attribute_set.map(&:name).include?(attr)
            @errors.push << "no field named #{attr.inspect}"
          end
        end
        @errors.empty?
      end

      def failure_message_for_should
        "Expected #{@klass.inspect} to #{description}, got #{@errors.join(',')}"
      end

      def failure_message_for_should_not
        "Expected #{@klass.inspect} to not #{description}, got #{@klass.inspect} to #{description}"
      end

      def description
        desc = "have #{@attributes.size > 1 ? 'fields' : 'field'} named #{@attributes.collect(&:inspect).join(',')}"
        desc << " of type #{@type.inspect}" if @type
        desc
      end
    end
    def have_attributes(*args)
      HaveAttributeMatcher.new(*args)
    end
    alias :have_attribute :have_attributes
  end
end

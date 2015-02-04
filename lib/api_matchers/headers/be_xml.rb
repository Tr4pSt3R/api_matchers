module APIMatchers
  module Headers
    class BeXML < Base
      def expected_content_type
        'application/xml; charset=utf-8'
      end

      def failure_message
        %Q{expected a XML response with '#{expected_content_type}'. Got: '#{content_type_response}'.}
      end

      def failure_message_when_negated
        %Q{expected to not be a XML response. Got: '#{expected_content_type}'.}
      end

      def description
        "be in XML"
      end

      # RSpec 2 compatibility:
      alias_method :failure_message_for_should, :failure_message
      alias_method :failure_message_for_should_not, :failure_message_when_negated
    end
  end
end

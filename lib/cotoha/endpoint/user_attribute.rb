module Cotoha
  module Endpoint
    module UserAttribute
      def user_attribute(document:, type: nil, do_segment: nil)
        post('/api/dev/nlp/beta/user_attribute', document: document, type: type, do_segment: do_segment)
      end
    end
  end
end

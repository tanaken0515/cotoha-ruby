module Cotoha
  module Endpoint
    module Coreference
      def coreference(document:, type: nil, do_segment: false)
        post('/api/dev/nlp/v1/coreference', document: document, type: type, do_segment: do_segment)
      end
    end
  end
end

module Cotoha
  module Endpoint
    module Parse
      def parse(sentence:, type: nil, dict_type: nil)
        post('/api/dev/nlp/v1/parse', sentence: sentence, type: type, dict_type: dict_type)
      end
    end
  end
end

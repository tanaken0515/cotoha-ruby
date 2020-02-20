module Cotoha
  module Endpoint
    module NamedEntity
      def named_entities(sentence:, type: nil, dict_type: nil)
        post('/api/dev/nlp/v1/ne', sentence: sentence, type: type, dict_type: dict_type)
      end
    end
  end
end

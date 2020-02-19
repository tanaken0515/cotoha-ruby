module Cotoha
  module Endpoint
    module SentenceType
      def sentence_type(sentence:, type: nil)
        post('/api/dev/nlp/v1/sentence_type', sentence: sentence, type: type)
      end
    end
  end
end

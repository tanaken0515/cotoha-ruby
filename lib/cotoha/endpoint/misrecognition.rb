module Cotoha
  module Endpoint
    module Misrecognition
      def detect_misrecognition(sentence:)
        post('/api/dev/nlp/beta/detect_misrecognition', sentence: sentence)
      end
    end
  end
end

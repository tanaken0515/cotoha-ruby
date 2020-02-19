module Cotoha
  module Endpoint
    module Sentiment
      def sentiment(sentence:)
        post('/api/dev/nlp/v1/sentiment', sentence: sentence)
      end
    end
  end
end

module Cotoha
  module Endpoint
    module Summary
      def summary(document:, sent_len:)
        post('/api/dev/nlp/beta/summary', document: document, sent_len: sent_len)
      end
    end
  end
end

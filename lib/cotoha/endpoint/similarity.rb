module Cotoha
  module Endpoint
    module Similarity
      def similarity(s1:, s2:, type: nil, dic_type: nil)
        post('/api/dev/nlp/v1/similarity', s1: s1, s2: s2, type: type, dic_type: dic_type)
      end
    end
  end
end

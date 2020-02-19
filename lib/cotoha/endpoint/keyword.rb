module Cotoha
  module Endpoint
    module Keyword
      def keywords(document:, type: nil, do_segment: nil, max_keyword_num: nil, dic_type: nil)
        params = {
          document: document,
          type: type,
          do_segment: do_segment,
          max_keyword_num: max_keyword_num,
          dic_type: dic_type
        }
        post('/api/dev/nlp/v1/keyword', **params)
      end
    end
  end
end

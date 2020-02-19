module Cotoha
  module Endpoint
    module RemoveFiller
      def remove_filler(text:, do_segment: false)
        post('/api/dev/nlp/beta/remove_filler', text: text, do_segment: do_segment)
      end
    end
  end
end

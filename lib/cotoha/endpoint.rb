require 'cotoha/endpoint/access_token'
require 'cotoha/endpoint/parse'
require 'cotoha/endpoint/named_entity'
require 'cotoha/endpoint/coreference'
require 'cotoha/endpoint/keyword'
require 'cotoha/endpoint/similarity'
require 'cotoha/endpoint/sentence_type'
require 'cotoha/endpoint/user_attribute'
require 'cotoha/endpoint/remove_filler'

module Cotoha
  module Endpoint
    include AccessToken
    include Parse
    include NamedEntity
    include Coreference
    include Keyword
    include Similarity
    include SentenceType
    include UserAttribute
    include RemoveFiller
  end
end

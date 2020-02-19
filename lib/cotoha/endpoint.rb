require 'cotoha/endpoint/access_token'
require 'cotoha/endpoint/parse'
require 'cotoha/endpoint/named_entity'

module Cotoha
  module Endpoint
    include AccessToken
    include Parse
    include NamedEntity
  end
end

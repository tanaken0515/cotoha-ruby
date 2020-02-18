require 'cotoha/endpoint/access_token'
require 'cotoha/endpoint/parse'

module Cotoha
  module Endpoint
    include AccessToken
    include Parse
  end
end

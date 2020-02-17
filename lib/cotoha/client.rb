require 'cotoha/connection'
require 'cotoha/endpoint'

module Cotoha
  class Client
    include Connection
    include Endpoint

    def initialize(url: nil, client_id: nil, client_secret: nil, token: nil)
      @url = url || 'https://api.ce-cotoha.com'
      @client_id = client_id
      @client_secret = client_secret
      @token = token
    end
  end
end

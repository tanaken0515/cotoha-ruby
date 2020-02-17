require 'cotoha/connection'
require 'cotoha/endpoint'

module Cotoha
  class Client
    include Connection
    include Endpoint
    BASE_URL = 'https://api.ce-cotoha.com'

    def initialize(url: nil, client_id: nil, client_secret: nil, token: nil)
      @url = url || BASE_URL
      @client_id = client_id
      @client_secret = client_secret
      @token = token
    end
  end
end

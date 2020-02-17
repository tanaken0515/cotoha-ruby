module Cotoha
  module Endpoint
    module AccessToken
      def create_access_token(**params)
        params = {grantType: 'client_credentials', clientId: @client_id, clientSecret: @client_secret}.merge(params)
        response = post('/v1/oauth/accesstokens', **params)
        response.tap do |res|
          @token = res['access_token']
        end
      end
    end
  end
end

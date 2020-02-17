RSpec.describe Cotoha::Endpoint::AccessToken do
  include_context 'client_with_client_credentials'

  describe 'create_access_token', vcr: true do
    context 'success' do
      it 'return access token hash' do
        response = client.create_access_token
        expect(response).to be_kind_of(Hash)
        expect(response.has_key?('access_token')).to be true
      end
    end

    context 'incorrect credentials' do
      let(:client_id) { 'IncorrectClientId' }
      let(:client_secret) { 'IncorrectClientSecret' }

      it 'raises error' do
        expect { client.create_access_token }.to raise_error(Cotoha::Unauthorized)
      end
    end
  end
end

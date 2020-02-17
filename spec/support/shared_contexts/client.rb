RSpec.shared_context 'client_with_token' do
  let(:client) do
    Cotoha::Client.new(token: 'xxxxxyyyyyzzzzz')
  end
end

RSpec.shared_context 'client_with_client_credentials' do
  let(:client_id) { 'CorrectClientId' }
  let(:client_secret) { 'CorrectClientSecret' }
  let(:client) do
    Cotoha::Client.new(client_id: client_id, client_secret: client_secret)
  end
end

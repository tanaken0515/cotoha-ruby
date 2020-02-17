RSpec.shared_context 'client_with_token' do
  let(:client) do
    Cotoha::Client.new(token: 'xxxxxyyyyyzzzzz')
  end
end

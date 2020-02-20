RSpec.describe Cotoha::Endpoint::UserAttribute do
  include_context 'client_with_token'

  describe 'user_attribute', vcr: true do
    context 'success' do
      it 'return user attribute' do
        response = client.user_attribute(document: '渋谷でエンジニアとして働いています。')
        expect(response).to be_kind_of(Hash)
        expect(response['result']).to be_kind_of(Hash)
        expect(response['status']).to be_kind_of(Integer)
        expect(response['message']).to be_kind_of(String)
      end
    end
  end
end


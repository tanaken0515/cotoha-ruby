RSpec.describe Cotoha::Endpoint::Similarity do
  include_context 'client_with_token'

  describe 'similarity', vcr: true do
    context 'success' do
      it 'return similarity' do
        response = client.similarity(s1: '近くのレストランはどこですか？', s2: 'このあたりの定食屋はどこにありますか？')
        expect(response).to be_kind_of(Hash)
        expect(response['result']['score']).to be_kind_of(Float)
        expect(response['status']).to be_kind_of(Integer)
        expect(response['message']).to be_kind_of(String)
      end
    end
  end
end

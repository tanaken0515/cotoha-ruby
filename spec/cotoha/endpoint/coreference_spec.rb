RSpec.describe Cotoha::Endpoint::Coreference do
  include_context 'client_with_token'

  describe 'coreference', vcr: true do
    context 'success' do
      it 'return coreference' do
        response = client.coreference(document: '太郎は友人だ。彼は焼き肉を食べた。')
        expect(response).to be_kind_of(Hash)
        expect(response['result']).to be_kind_of(Hash)
        expect(response['result']['coreference']).to be_kind_of(Array)
        expect(response['result']['tokens']).to be_kind_of(Array)
        expect(response['status']).to be_kind_of(Integer)
        expect(response['message']).to be_kind_of(String)
      end
    end
  end
end


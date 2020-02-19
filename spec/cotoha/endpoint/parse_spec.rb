RSpec.describe Cotoha::Endpoint::Parse do
  include_context 'client_with_token'

  describe 'parse', vcr: true do
    context 'success' do
      it 'return parsed result' do
        response = client.parse(sentence: '私は犬が好きだ。')
        expect(response).to be_kind_of(Hash)
        expect(response['result']).to be_kind_of(Array)
        expect(response['status']).to be_kind_of(Integer)
        expect(response['message']).to be_kind_of(String)
      end
    end
  end
end

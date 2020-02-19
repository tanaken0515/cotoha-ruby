RSpec.describe Cotoha::Endpoint::NamedEntity do
  include_context 'client_with_token'

  describe 'named_entities', vcr: true do
    context 'success' do
      it 'return named entities' do
        response = client.named_entities(sentence: '私は犬が好きだ。よく代々木公園の近くを散歩している。')
        expect(response).to be_kind_of(Hash)
        expect(response['result']).to be_kind_of(Array)
        expect(response['status']).to be_kind_of(Integer)
        expect(response['message']).to be_kind_of(String)
      end
    end
  end
end

RSpec.describe Cotoha::Endpoint::SentenceType do
  include_context 'client_with_token'

  describe 'sentence_type', vcr: true do
    context 'success' do
      it 'return sentence type' do
        response = client.sentence_type(sentence: '近くのレストランはどこですか？')
        expect(response).to be_kind_of(Hash)
        expect(response['result']['modality']).to be_kind_of(String)
        expect(response['result']['dialog_act']).to be_kind_of(Array)
        expect(response['status']).to be_kind_of(Integer)
        expect(response['message']).to be_kind_of(String)
      end
    end
  end
end

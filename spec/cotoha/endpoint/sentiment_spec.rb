RSpec.describe Cotoha::Endpoint::Sentiment do
  include_context 'client_with_token'

  describe 'sentiment', vcr: true do
    context 'success' do
      it 'return sentiment' do
        response = client.sentiment(sentence: 'ゲームをするのが好きです。')
        expect(response).to be_kind_of(Hash)
        expect(response['result']).to be_kind_of(Hash)
        expect(response['result']['sentiment']).to be_kind_of(String)
        expect(response['result']['score']).to be_kind_of(Float)
        expect(response['result']['emotional_phrase']).to be_kind_of(Array)
        expect(response['status']).to be_kind_of(Integer)
        expect(response['message']).to be_kind_of(String)
      end
    end
  end
end

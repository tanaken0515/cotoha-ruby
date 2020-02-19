RSpec.describe Cotoha::Endpoint::Misrecognition do
  include_context 'client_with_token'

  describe 'detect_misrecognition', vcr: true do
    context 'success' do
      it 'return misrecognition' do
        response = client.detect_misrecognition(sentence: '温泉認識は誤りを起こす')
        expect(response).to be_kind_of(Hash)
        expect(response['result']).to be_kind_of(Hash)
        expect(response['result']['candidates']).to be_kind_of(Array)
        expect(response['result']['score']).to be_kind_of(Float)
        expect(response['status']).to be_kind_of(Integer)
        expect(response['message']).to be_kind_of(String)
      end
    end
  end
end

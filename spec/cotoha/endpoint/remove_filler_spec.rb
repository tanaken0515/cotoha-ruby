RSpec.describe Cotoha::Endpoint::RemoveFiller do
  include_context 'client_with_token'

  describe 'remove_filler', vcr: true do
    context 'success' do
      it 'return remove filler' do
        response = client.remove_filler(text: 'えーーっと、あの、何時に待ち合わせですっけ。')
        expect(response).to be_kind_of(Hash)
        expect(response['result']).to be_kind_of(Array)
        expect(response['status']).to be_kind_of(Integer)
        expect(response['message']).to be_kind_of(String)
      end
    end
  end
end


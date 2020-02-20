RSpec.describe Cotoha::Endpoint::Summary do
  include_context 'client_with_token'

  describe 'summary', vcr: true do
    context 'success' do
      it 'return summary' do
        document =<<~EOS
          前線が太平洋上に停滞しています。
          一方、高気圧が千島近海にあって、北日本から東日本をゆるやかに覆っています。
          関東地方は、晴れ時々曇り、ところにより雨となっています。
          東京は、湿った空気や前線の影響により、晴れ後曇りで、夜は雨となるでしょう。
        EOS
        response = client.summary(document: document, sent_len: 1)
        expect(response).to be_kind_of(Hash)
        expect(response['result']).to be_kind_of(String)
        expect(response['status']).to be_kind_of(Integer)
      end
    end
  end
end

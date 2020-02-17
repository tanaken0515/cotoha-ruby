RSpec.describe Cotoha::Connection do
  include_context 'client_with_token'

  describe 'get' do
    include_examples 'response handling' do
      let(:request_method) { :get }
    end
  end

  describe 'post' do
    include_examples 'response handling' do
      let(:request_method) { :post }
    end
  end

  describe 'put' do
    include_examples 'response handling' do
      let(:request_method) { :put }
    end
  end

  describe 'delete' do
    include_examples 'response handling' do
      let(:request_method) { :delete }
    end
  end
end

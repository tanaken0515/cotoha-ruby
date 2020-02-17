RSpec.shared_examples 'response handling' do
  let(:request_method) { :get }
  let(:url) { Cotoha::Client::BASE_URL }
  let(:path) { '/' }

  context 'success' do
    before do
      stub_request(request_method, url)
        .to_return(status: 200, body: 'OK')
    end

    it 'returns the response body' do
      expect(client.send(request_method, path)).to eq('OK')
    end
  end

  context 'server returns 400' do
    before do
      stub_request(request_method, url)
        .to_return(status: 400, body: 'BadRequest')
    end

    it 'raises BadRequest' do
      message = %r{^#{request_method.upcase} #{url}#{path}: 400 - BadRequest$}
      expect { client.send(request_method, path) }
        .to raise_error(Cotoha::BadRequest, message)
    end
  end

  context 'server returns 401' do
    before do
      stub_request(request_method, url)
        .to_return(status: 401, body: 'Unauthorized')
    end

    it 'raises Unauthorized' do
      message = %r{^#{request_method.upcase} #{url}#{path}: 401 - Unauthorized$}
      expect { client.send(request_method, path) }
        .to raise_error(Cotoha::Unauthorized, message)
    end
  end

  context 'server returns 403' do
    before do
      stub_request(request_method, url)
        .to_return(status: 403, body: 'Forbidden')
    end

    it 'raises Forbidden' do
      message = %r{^#{request_method.upcase} #{url}#{path}: 403 - Forbidden$}
      expect { client.send(request_method, path) }
        .to raise_error(Cotoha::Forbidden, message)
    end
  end

  context 'server returns 404' do
    before do
      stub_request(request_method, url)
        .to_return(status: 404, body: 'NotFound')
    end

    it 'raises NotFound' do
      message = %r{^#{request_method.upcase} #{url}#{path}: 404 - NotFound$}
      expect { client.send(request_method, path) }
        .to raise_error(Cotoha::NotFound, message)
    end
  end

  context 'server returns other 4xx' do
    before do
      stub_request(request_method, url)
        .to_return(status: 499, body: 'ClientError')
    end

    it 'raises ClientError' do
      message = %r{^#{request_method.upcase} #{url}#{path}: 499 - ClientError$}
      expect { client.send(request_method, path) }
        .to raise_error(Cotoha::ClientError, message)
    end
  end

  context 'server returns 500' do
    before do
      stub_request(request_method, url)
        .to_return(status: 500, body: 'InternalServerError')
    end

    it 'raises InternalServerError' do
      message =
        %r{^#{request_method.upcase} #{url}#{path}: 500 - InternalServerError$}
      expect { client.send(request_method, path) }
        .to raise_error(Cotoha::InternalServerError, message)
    end
  end

  context 'server returns 502' do
    before do
      stub_request(request_method, url)
        .to_return(status: 502, body: 'BadGateway')
    end

    it 'raises BadGateway' do
      message = %r{^#{request_method.upcase} #{url}#{path}: 502 - BadGateway$}
      expect { client.send(request_method, path) }
        .to raise_error(Cotoha::BadGateway, message)
    end
  end

  context 'server returns 503' do
    before do
      stub_request(request_method, url)
        .to_return(status: 503, body: 'ServiceUnavailable')
    end

    it 'raises ServiceUnavailable' do
      message =
        %r{^#{request_method.upcase} #{url}#{path}: 503 - ServiceUnavailable$}
      expect { client.send(request_method, path) }
        .to raise_error(Cotoha::ServiceUnavailable, message)
    end
  end

  context 'server returns other 5xx' do
    before do
      stub_request(request_method, url)
        .to_return(status: 599, body: 'ServerError')
    end

    it 'raises ServerError' do
      message = %r{^#{request_method.upcase} #{url}#{path}: 599 - ServerError$}
      expect { client.send(request_method, path) }
        .to raise_error(Cotoha::ServerError, message)
    end
  end
end

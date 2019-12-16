require 'rails_helper'

RSpec.describe 'POST /properties', type: :request do
  let(:user) { Fabricate(:seller) }
  let(:url) { '/properties' }
  let(:params) do
    {
      property: {
        title:       'Title',
        description: 'description'
      }
    }
  end

  context 'when params are correct' do
    before do
      post url, params: params, headers: headers_generator(user)
    end

    it 'returns 200' do
      expect(response).to have_http_status(200)
    end
  end

  context 'when params are incorrect' do
    before { post url, headers: headers_generator(user) }
    it 'returns bad request' do
      expect(response.status).to eq 400
    end
  end

  context 'when not permitted' do
    before { post url, params: params }
    it 'returns not authorized' do
      expect(response.status).to eq 401
    end
  end
end

RSpec.describe 'GET /properties', type: :request do
  let(:user) { Fabricate(:seller) }
  let(:url) { '/properties' }

  it 'returns 200, no properties' do
    get url, headers: headers_generator(user)

    expect(response).to have_http_status(200)
    expect(JSON.parse(response.body)).to eq([])
  end
end

require 'rails_helper'

RSpec.describe 'ClauseMasters', type: :request do
  let!(:clause_masters) { create_list(:clause_master, 10) }
  let(:clause_master) { clause_masters.first }
  let(:create_clause_master) { post '/clause_masters/', params: attributes_for(:clause_master) }

  describe 'GET /clause_masters' do
    before { get '/clause_masters' }

    it 'returns list of clause masters' do
      expect(assigns(:clause_masters).count).to eq(10)
    end

    it 'renders index page' do
      expect(response).to render_template(:index)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /clause_masters/new' do
    before { get '/clause_masters/new' }

    it 'renders new page' do
      expect(response).to render_template(:new)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /clause_masters' do
    context 'when the request is valid' do
      it 'creates a clause master' do
        expect { create_clause_master }.to change(ClauseMaster, :count).by(1)
      end

      it 'redirect to index page' do
        create_clause_master
        expect(response).to redirect_to clause_masters_path
      end
    end

    context 'when the request is invalid' do
      before { post '/clause_masters', params: attributes_for(:invalid_clause_master) }

      it 'render new page' do
        expect(response).to render_template(:new)
      end
    end
  end

  describe 'GET /clause_masters/:id/edit' do
    before { get "/clause_masters/#{clause_master.id}/edit" }

    it 'render edit page' do
      expect(response).to render_template(:edit)
    end
  end

  describe 'PUT /clause_masters/:id' do
    context 'when the request is valid' do
      before { put "/clause_masters/#{clause_master.id}", params: { name: 'Edited name' } }

      it 'redirect to index page' do
        expect(response).to redirect_to clause_masters_path
      end
    end

    context 'when the request is invalid' do
    end
  end

  describe 'DELETE /clause_masters/:id' do
    before { delete "/clause_masters/#{clause_master.id}" }

    it 'redirect to index page' do
      expect(response).to redirect_to clause_masters_path
    end
  end
end

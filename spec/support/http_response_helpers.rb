# frozen_string_literal: true

module Controllers
  module HttpResponseHelpers
    shared_examples 'unauthorized response' do
      it { is_expected.to have_http_status(:unauthorized) }
    end

    shared_examples 'forbidden response' do
      it { is_expected.to have_http_status(:forbidden) }
    end

    shared_examples 'success response' do
      it { is_expected.to have_http_status(:success) }
    end

    shared_examples 'bad request response' do
      it { is_expected.to have_http_status(:bad_request) }
    end

    shared_examples 'not found response' do
      it { is_expected.to have_http_status(:not_found) }
    end

    shared_examples 'unprocessable entity response' do
      it { is_expected.to have_http_status(:unprocessable_entity) }
    end
  end
end

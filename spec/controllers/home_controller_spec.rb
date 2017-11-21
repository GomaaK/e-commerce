# frozen_string_literal: true

require 'spec_helper'

describe HomeController  do
  describe "GET 'index'" do
    subject { get :index }

    it_behaves_like 'success response'
  end
end

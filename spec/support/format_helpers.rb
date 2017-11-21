# frozen_string_literal: true

require 'csv'

module Controllers
  module FormatHelpers
    def json
      JSON.parse(subject.body)
    end

    def csv
      CSV.parse(subject.body)
    end
  end
end

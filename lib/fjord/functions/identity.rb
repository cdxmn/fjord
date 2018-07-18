# frozen_string_literal: true

module Fjord
  module Functions
    def identity
      -> (x) { x }
    end
  end
end

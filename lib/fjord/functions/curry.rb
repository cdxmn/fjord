# frozen_string_literal: true

module Fjord
  module Functions
    def curry
      -> (fn) { fn.curry }
    end
  end
end

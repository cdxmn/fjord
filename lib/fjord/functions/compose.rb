# frozen_string_literal: true

module Fjord
  module Functions
    def compose
      -> (*fns) { pipe.(*fns.reverse) }
    end
  end
end

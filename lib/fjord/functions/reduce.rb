# frozen_string_literal: true

module Fjord
  module Functions
    def reduce
      -> (fn, acc, list) { list.reduce(acc, &fn) }
    end
  end
end

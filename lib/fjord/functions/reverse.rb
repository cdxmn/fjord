# frozen_string_literal: true

module Fjord
  module Functions
    def reverse
      -> (enum) { enum.reverse }
    end
  end
end

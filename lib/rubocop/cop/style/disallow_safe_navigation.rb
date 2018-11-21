# frozen_string_literal: true

module RuboCop
  module Cop
    module Style
      # Disallow the safe navigation operator
      #
      # @example
      #   # bad
      #   foo&.bar
      #
      class DisallowSafeNavigation < Cop
        MSG = 'Do not use &.'.freeze

        def on_csend(node)
          add_offense(node)
        end
      end
    end
  end
end

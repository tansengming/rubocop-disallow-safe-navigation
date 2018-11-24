# frozen_string_literal: true

RSpec.describe RuboCop::Cop::Style::DisallowSafeNavigation do
  subject(:cop) { described_class.new }

  context 'when there are no safe navigation operators' do
    it 'should not flag offense' do
      expect_no_offenses(<<-RUBY)
        a.b.c
      RUBY
    end
  end
end

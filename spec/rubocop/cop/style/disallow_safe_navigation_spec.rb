# frozen_string_literal: true

RSpec.describe RuboCop::Cop::Style::DisallowSafeNavigation, :config do
  subject(:cop) { described_class.new(config) }

  context 'TargetRubyVersion >= 2.3', :ruby23 do
    context 'when there is a safe navigation operator at the top of the chain' do
      it 'registers an offense' do
        expect_offense(<<-RUBY)
          a&.b.c
          ^^^^ Do not use &.
        RUBY
      end
    end

    context 'when there is a safe navigation operator at the end of the chain' do
      it 'registers an offense' do
        expect_offense(<<-RUBY)
          a.b&.c
          ^^^^^^ Do not use &.
        RUBY
      end
    end

    context 'when there is a safe navigation operator in the middle of the chain' do
      it 'registers an offense' do
        expect_offense(<<-RUBY)
          a&.b.c
          ^^^^ Do not use &.
        RUBY
      end
    end

    context 'when there is a safe navigation operator all along the chain' do
      it 'registers an offense' do
        expect_offense(<<-RUBY)
          a&.b&.c
          ^^^^ Do not use &.
          ^^^^^^^ Do not use &.
        RUBY
      end
    end

    context 'when there are no safe navigation operators' do
      it 'should not flag offense' do
        expect_no_offenses(<<-RUBY)
          a.b.c
        RUBY
      end
    end
  end
end

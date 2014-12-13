require 'spec_helper'

module Codebreaker
  describe Game do
    def expect_output(string)
      expect(output).to receive(:puts).with(string)
    end

    let(:game) { Game.new(output) }
    let(:output) { double('Output') }
    let(:secret) { '1234' }
    before { allow(output).to receive(:puts) }

    describe '#start' do
      it 'sends a welcome message' do
        expect_output('Welcome to Codebreaker!')
        game.start(secret)
      end
      it 'prompts for the first guess' do
        expect_output('Enter guess:')
        game.start(secret)
      end
    end

    describe '#guess' do
      context 'with no matches' do
        let(:guess) { '5555' }
        before { game.start(secret) }
        it 'outputs ""' do
          expect_output('')
          game.guess(guess)
        end
      end
    end
  end
end

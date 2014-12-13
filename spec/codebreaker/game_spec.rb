require 'spec_helper'

module Codebreaker
  describe Game do
    describe '#start' do
      let(:output) { double('Output') }
      let(:game) { Game.new(output) }
      let(:secret) { '1234' }
      before { allow(output).to receive(:puts) }
      it 'sends a welcome message' do
        expect(output).to receive(:puts).with('Welcome to Codebreaker!')
        game.start(secret)
      end
      it 'prompts for the first guess' do
        expect(output).to receive(:puts).with('Enter guess:')
        game.start(secret)
      end
    end
  end
end

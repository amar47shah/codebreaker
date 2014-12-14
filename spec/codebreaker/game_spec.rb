require 'spec_helper'

module Codebreaker
  describe Game do
    def expect_output(string)
      expect(output).to receive(:puts).with(string)
    end

    let(:game) { Game.new(output) }
    let(:output) { double('Output') }
    let(:secret) { '1234' }
    let(:start_game) { game.start(secret) }

    before { allow(output).to receive(:puts) }

    describe '#start' do
      it 'sends a welcome message' do
        expect_output('Welcome to Codebreaker!')
        start_game
      end
      it 'prompts for the first guess' do
        expect_output('Enter guess:')
        start_game
      end
    end

    describe '#guess' do
      let(:guess) { double('Guess') }
      let(:mark) { double('Mark') }
      let(:setup_marker) do
        marker = double('Marker')
        allow(Marker).to receive(:new).with(secret).and_return(marker)
        allow(marker).to receive(:mark).with(guess).and_return(mark)
      end
      before do
        setup_marker
        start_game
      end
      it 'outputs the mark' do
        expect_output(mark)
        game.guess(guess)
      end
    end
  end
end

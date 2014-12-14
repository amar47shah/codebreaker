require 'spec_helper'

shared_examples 'outputs correct feedback' do |mark|
  it "outputs '#{mark}'" do
    expect_output(mark)
    game.guess(guess)
  end
end

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
      before { start_game }
      context 'with no matches' do
        let(:guess) { '5555' }
        it_has_behavior 'outputs correct feedback', ''
      end
      context 'with one exact match' do
        let(:guess) { '1555' }
        it_has_behavior 'outputs correct feedback', '+'
      end
      context 'with one number match' do
        let(:guess) { '2555' }
        it_has_behavior 'outputs correct feedback', '-'
      end
      context 'with two exact matches' do
        let(:guess) { '5254' }
        it_has_behavior 'outputs correct feedback', '++'
      end
      context 'with one exact and one number match' do
        let(:guess) { '5154' }
        it_has_behavior 'outputs correct feedback', '+-'
      end
      context 'with two number matches' do
        let(:guess) { '2545' }
        it_has_behavior 'outputs correct feedback', '--'
      end
      context 'with three exact matches' do
        let(:guess) { '5234' }
        it_has_behavior 'outputs correct feedback', '+++'
      end
    end
  end
end

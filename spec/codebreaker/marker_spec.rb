require 'spec_helper'

module Codebreaker
  shared_examples 'sets mark' do |mark|
    describe '#mark' do
      subject { Marker.new('1234').mark(guess) }
      it { is_expected.to eq(mark) }
    end
  end

  describe Marker do
    context 'with no matches' do
      let(:guess) { '5555' }
      it_has_behavior 'sets mark', ''
    end
    context 'with one exact match' do
      let(:guess) { '1555' }
      it_has_behavior 'sets mark', '+'
    end
    context 'with one number match' do
      let(:guess) { '2555' }
      it_has_behavior 'sets mark', '-'
    end
    context 'with two exact matches' do
      let(:guess) { '5254' }
      it_has_behavior 'sets mark', '++'
    end
    context 'with one exact and one number match' do
      let(:guess) { '5154' }
      it_has_behavior 'sets mark', '+-'
    end
    context 'with two number matches' do
      let(:guess) { '2545' }
      it_has_behavior 'sets mark', '--'
    end
    context 'with three exact matches' do
      let(:guess) { '5234' }
      it_has_behavior 'sets mark', '+++'
    end
  end
end

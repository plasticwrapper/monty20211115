require_relative '../lib/monty.rb'

describe Monty do
  describe '#initialize' do
    let(:game) { Monty.new }
    it 'sets up the doors' do
      expect(game.doors).to be
    end
  end
end

require_relative '../lib/monty'

INTERVAL = 10_000

describe Monty do
  describe '#initialize' do
    let(:game) { Monty.new }
    it 'sets up the doors' do
      expect(game.doors).to be
    end

    it 'trends towards 2/3rds probability' do
      results = []

      INTERVAL.times do
        results << Monty.new.result
      end

      wins = results.count { |result| result == true }

      wins_percentage = (wins * 100) / INTERVAL

      # FIXME: expect results to trend towards 66%
      expect(results.count).to be INTERVAL
      expect(wins_percentage).to be_greater_than 50
    end
  end
end

module Codebreaker
  class Game
    def initialize(output)
      @output = output
    end

    def start(secret)
      @secret = secret
      puts 'Welcome to Codebreaker!'
      puts 'Enter guess:'
    end

    def guess(guess)
      puts mark(guess)
    end

  private

    def exact_match?(number, index)
      @secret[index] == number
    end

    def number_match?(number, index)
      !exact_match?(number, index) && @secret.include?(number)
    end

    def mark(guess)
      [0, 1, 3].reduce('') { |m, i| m + (exact_match?( guess[i], i) ? '+' : '') } +
      (0..3).reduce('') { |m, i| m + (number_match?(guess[i], i) ? '-' : '') }
    end

    def puts(string)
      @output.puts(string)
    end
  end
end

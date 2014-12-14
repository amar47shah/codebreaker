module Codebreaker
  class Marker
    def initialize(secret)
      @secret = secret
    end

    def mark(guess)
      exact_mark(guess) + number_mark(guess)
    end

  private

    def exact_match?(number, index)
      @secret[index] == number
    end

    def exact_mark(guess)
      match_mark(:exact_match?, guess, '+')
    end

    def match_mark(condition, guess, sign)
      (0..3).reduce('') do |mark, index|
        mark + (send(condition, guess[index], index) ? sign : '')
      end
    end

    def number_match?(number, index)
      !exact_match?(number, index) && @secret.include?(number)
    end

    def number_mark(guess)
      match_mark(:number_match?, guess, '-')
    end
  end
end

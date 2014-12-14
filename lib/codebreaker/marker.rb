module Codebreaker
  class Marker
    def initialize(secret)
      @secret = secret
    end

    def mark(guess)
      (0..3).reduce('') { |m, i| m + (exact_match?( guess[i], i) ? '+' : '') } +
      (0..3).reduce('') { |m, i| m + (number_match?(guess[i], i) ? '-' : '') }
    end

  private

    def exact_match?(number, index)
      @secret[index] == number
    end

    def number_match?(number, index)
      !exact_match?(number, index) && @secret.include?(number)
    end
  end
end

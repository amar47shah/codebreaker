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
      puts @secret[0] == guess[0] ? '+' : ''
    end

  private

    def puts(string)
      @output.puts(string)
    end
  end
end

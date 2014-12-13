module Codebreaker
  class Game
    def initialize(output)
      @output = output
    end

    def start(secret)
      puts 'Welcome to Codebreaker!'
      puts 'Enter guess:'
    end

    def guess(guess)
      puts ''
    end

  private

    def puts(string)
      @output.puts(string)
    end
  end
end

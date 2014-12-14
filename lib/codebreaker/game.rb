module Codebreaker
  class Game
    def initialize(output)
      @output = output
    end

    def start(secret)
      @marker = Marker.new(secret)
      puts 'Welcome to Codebreaker!'
      puts 'Enter guess:'
    end

    def guess(guess)
      puts @marker.mark(guess)
    end

  private

    def puts(string)
      @output.puts(string)
    end
  end
end

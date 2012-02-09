module LineGenerator

  def self.line
    chr_set = CharacterSet.new
    chr_set.generate_set
  end

  class CharacterSet
    attr_reader :keys
    attr_accessor :count
    attr_accessor :seed

    def initialize
      @finger = (0..7).to_a

      @finger[0] = ['a', '~', '`', '1', '!']
      @finger[1] = ['s', '2', '@']
      @finger[2] = ['d', '3', '#']
      @finger[3] = ['f', '4', '$', '5', '%']

      @finger[4] = ['j', '6', '^', '7', '&']
      @finger[5] = ['k', '8', '(', '9', '*', ',', '<']
      @finger[6] = ['l', '0', ')', '.', '>']
      @finger[7] = [';', ':', '"', "'", '/', '?' '{', '[', '}', ']', '-', '_', '=', '+', '|', '\\' ]

      @random_index = Random.rand(8)
      @keys = @finger[@random_index]
    end

    def generate_set
      @count = 15
      @count = 25 if @random_index == 7
      generated_set = ''

      @count.times do |i|
        if i % 2 == 0
          append_character = @finger[@random_index][0]
        else
          append_character = @finger[@random_index][1 + Random.rand(@finger[@random_index].size - 1)]
        end
        generated_set += append_character
      end
      generated_set
    end

  end

end


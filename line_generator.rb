module LineGenerator

  def self.line
    CharacterSet.new.generate_set
  end

  class CharacterSet
    attr_reader :keys
    attr_accessor :count

    def initialize
      @finger = (0..7).to_a

      @finger[0] = ['a', '~', '`', '1', '!']
      @finger[1] = ['s', '2', '@']
      @finger[2] = ['d', '3', '#']
      @finger[3] = ['f', '4', '$', '5', '%']

      @finger[4] = ['j', '6', '^', '7', '&']
      @finger[5] = ['k', '8', '*', ',', '<']
      @finger[6] = ['l', '9', '(', '.', '>']
      @finger[7] = [';', '0', ')', ':', '"', "'", '/', '?' '{', '[', '}', ']', '-', '_', '=', '+', '|', "\\" ]

      @random_index = Random.rand(8)
      @keys = @finger[@random_index]
    end

    def generate_set
      @count = 15
      @count = 25 if @random_index == 7
      generated_set = ''

      @count.times do |i|
        generated_set += @finger[@random_index][Random.rand(@finger[@random_index].size)]
      end
      generated_set
    end

  end

end


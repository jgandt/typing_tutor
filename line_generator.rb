require 'yaml'

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

      @finger = YAML::load(File.open( 'finger_key_mapping.yml') )
      
      @random_index = Random.rand(@finger.size)
      @keys = @finger[@random_index]
    end

    def generate_set
      @count = 16
      @count = 25 if @random_index == 9
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


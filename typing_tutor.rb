require 'commander'
require 'highline/system_extensions'

require './line_generator'

include HighLine::SystemExtensions

class TypingTutor
  
  def initialize
    run_test
  end

  def run_test
    puts 'Just keep typing'
    generate_test_line

    typed_line = ''
    10.times do
      generate_test_line

      tutor_line

      puts ""
      puts "nice"

      sleep 1
    end
  end

  def generate_test_line
    @generated_line = LineGenerator.line
  end

  def tutor_line
    typed_line = ''
    puts @generated_line

    while @generated_line != typed_line
      typed_line = process_key_press( typed_line )
    end
  end

  #consider re-opening String class
  def process_key_press( typed_line )
    # retrieve typed character
    typed_character = get_character.chr
    # process backspace
    if typed_character == "\177"
      putc "\b \b"
      typed_line.chop!
      return typed_line
    # ignore return
    elsif typed_character == "\r"
      return typed_line
    end
    # append typed to current line character and write it out
    typed_line = typed_line + typed_character
    putc typed_character
    typed_line
  end

end

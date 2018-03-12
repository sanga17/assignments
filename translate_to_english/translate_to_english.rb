FOLDER_PATH = '/home/wgbl/Sangmesh_assignment/sanga'
OP_FOLDER_PATH = '/home/wgbl/Sangmesh_assignment/converted_file'
GLOSARY_FILE = "glosary.txt"
class TranslateToEnglish
  def initialize
    @input_file
    @text_file
    @out_file
    @new_file
    @folder_path
  end


  def self.do_conversion
    Dir.foreach(FOLDER_PATH) do |filename|
      ext = File.extname(filename)
      next if filename == '.' || filename == '..'
      TranslateToEnglish.create_file(ext,filename)
      TranslateToEnglish.file_transfer(@text_file,@out_file)
      TranslateToEnglish.closeOperation
    end
    puts "completed"
  end

  def self.create_file(ext)
      @text_file = File.new("#{@input_file}")
      @new_file = File.basename(@input_file)
      @out_file = File.new("#{OP_FOLDER_PATH}/#{@new_file}", "w+")
  end

  def self.file_transfer(text_file,out_file)
    line_converted = ""
    text_file.each_line do |line|
      glosary = File.read("#{GLOSARY_FILE}")
      glosary.each_line do |line1|
        line1 = line1.chomp
        hash = Hash[*line1.split(" ")]
        hash.each do |key,value|
          if line.include? key
            line_converted = line.gsub!(key,value)
          end
        end
      end
      out_file.puts(TranslateToEnglish.last_word_correction(line_converted))
    end
  end

  def self.convert
    File.open('some_file', 'r') do |file|
      file.each_line do |line|
        line_converted = line.gsub!(key,value)
        out_file.puts(line_converted)
      end
    end
  end

  def self.take_file_path
    puts "enter file:"
    @input_file = gets.chomp
    puts "enter file path to store resulting file"
    @folder_path = gets.chomp
    ext = File.extname(@input_file)
    TranslateToEnglish.conversion_of_file(ext)
  end

  def self.conversion_of_file(ext)
    TranslateToEnglish.create_file(ext)
    TranslateToEnglish.file_transfer(@text_file,@out_file)
    puts "the resulting file is converted here:
    #{@folder_path}/#{@new_file}"
    TranslateToEnglish.closeOperation
  end

  def self.closeOperation
    @text_file.close
    @out_file.close
  end

  def self.last_word_correction(line)
    word_array = line.split(' ')
    word_array.each do |word|
      if  word[-2,1] != 'y' && word[-1,1] == 'a'
        word1 = word.chop
        line.sub! word, word1
      end
    end
    line
  end

end
t = TranslateToEnglish.new
TranslateToEnglish.take_file_path
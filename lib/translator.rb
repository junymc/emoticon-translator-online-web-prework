require "yaml"# require modules here
# emoticon_file = 
# angel:
#   - "O:)"      
#   - "☜(⌒▽⌒)☞"
# angry:
#   - ">:("
#   - "ヽ(ｏ`皿′ｏ)ﾉ"
def load_library(emoticon_file)
    library = YAML.load_file(emoticon_file)
    result = {"get_meaning" => {}, "get_emoticon" => {}}
    library.each do |meaning, emoticons|
      result["get_meaning"][emoticons[1]] = meaning
      result["get_emoticon"][emoticons[0]] = emoticons[1]
    end
    result
  end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

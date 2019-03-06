require "yaml"# require modules here
# emoticon_file = {
# angel:
#   - "O:)"
#   - "☜(⌒▽⌒)☞"
# angry:
#   - ">:("
#   - "ヽ(ｏ`皿′ｏ)ﾉ"
# }

# result = {"get_meaning" => {"☜(⌒▽⌒)☞":angel}, "get_emoticon" => {"O:)":"☜(⌒▽⌒)☞"}}

def load_library(emoticon_file)
    library = YAML.load_file(emoticon_file)
    result = {"get_meaning" => {}, "get_emoticon" => {}}
    library.each do |meaning, emoticons|
      result["get_meaning"][emoticons[1]] = meaning
      result["get_emoticon"][emoticons[0]] = emoticons[1]
    end
    result
  end

def get_japanese_emoticon(emoticon_file, en_emoticon)
  library = load_library(emoticon_file)
   if library["get_emoticon"].include? (en_emoticon)
     library["get_emoticon"][en_emoticon]
   else
     "Sorry, that emoticon was not found."
   end
end

def get_english_meaning(emoticon_file, ja_emoticon)
  library = load_library(emoticon_file)
   if library["get_emoticon"].include? (ja_emoticon)
     library["get_emoticon"][ja_emoticon]
   else
     "Sorry, that emoticon was not found."
   end
end

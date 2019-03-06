require "yaml"# require modules here

def load_library(library)
  # library = YAML.load_file(emoticon_file)
  # result = {"get_meaning" => {}, "get_emoticon" => {}}
  # library.each do |meaning, emoticons|
  #   result["get_meaning"][emoticons[1]] = meaning
  #   result["get_emoticon"][emoticons[0]] = emoticons[1]
  # end
  # result
  new_hash = {
   "get_meaning" => {},
   "get_emoticon" => {}
 }
 library.each do |meaning, translation|
   english = translation[0]
   japanese = translation[1]
   new_hash["get_meaning"][japanese] = meaning
   new_hash["get_emoticon"][english] = japanese
 end
  return new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

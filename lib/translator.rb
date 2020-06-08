require 'pry'
require "yaml"
# require modules here

def load_library(file)
  emoticons = YAML.load_file(file)
  new_hash = {}
  # code goes here
  emoticons.each do |key, value|
    new_hash[key] = {}
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
end

new_hash
end

  def get_japanese_emoticon(file, emoticon)
  data = load_library(file)
  result = data[:get_emoticon][emoticon]
  if result == nil
    return "Sorry, that emoticon was not found"
  end
  return result
end

def get_english_meaning(file, emoticon)
  load_library(file)

  "Sorry, that emoticon was not found"
  # code goes here
end

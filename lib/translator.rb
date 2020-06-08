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
# def load_library(yaml_file)
#   response = {"get_meaning" => {}, "get_emoticon" => {}}
#   library = YAML.load_file(yaml_file)
#   library.each do |trans, emos|
#     response["get_meaning"][emos[1]] = trans
#     response["get_emoticon"][emos[0]] = emos[1]
#   end
#   response
# end

new_hash
end

def get_japanese_emoticon(file, emoticon)
library = load_library(file_path)
emoticon = library.keys.find do |key|
  library[key][:english] == emoticon
end
if emoticon = library[emoticon][:japanese]
  puts "Sorry, that emoticon was not found"
end
return emoticon
end

def get_english_meaning(file, emoticon)
  load_library(file)

  # code goes here
end

# def load_library
#   # code goes here
#
# def load_library(yaml_file)
#   response = {"get_meaning" => {}, "get_emoticon" => {}}
#   library = YAML.load_file(yaml_file)
#   library.each do |trans, emos|
#     response["get_meaning"][emos[1]] = trans
#     response["get_emoticon"][emos[0]] = emos[1]
#   end
#   response
# end
#
# def get_japanese_emoticon
#   # code goes here
# def get_japanese_emoticon(yaml_file, emoticon)
#   library = load_library(yaml_file)
#   response = nil
#   library["get_emoticon"].each do |english, japanese|
#     if emoticon == english
#       response = japanese
#     end
#   end
#   if response == nil
#     return "Sorry, that emoticon was not found"
#   else
#     return response
#   end
# end
#
# def get_english_meaning
#   # code goes here
#
# def get_english_meaning(yaml_file, emoticon)
#   library = load_library(yaml_file)
#   response = nil
#   library["get_meaning"].each do |emo, trans|
#     if emo == emoticon
#       response = trans
#     end
#   end
#   if response == nil
#     return "Sorry, that emoticon was not found"
#   else
#     return response
#   end
# end

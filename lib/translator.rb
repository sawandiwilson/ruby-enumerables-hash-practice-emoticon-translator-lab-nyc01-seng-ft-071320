# require modules here

def load_library(yml_file)
  #This method should return a hash where each key is the name of an emoticon. 
  response = {"get_meaning" => {}, "get_japanese_emoticon" => {}}
  #Each emoticon name should point to a nested hash containing two keys, :english and :japanese. These keys will point to English and Japanese versions of the emoticon. 
  library = YAML.load_file(yaml_file)
  library.each do |trans, emos|
    response["get_meaning"][emos[1]] = trans
    response["get_emoticon"][emos[0]] = emos[1]
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
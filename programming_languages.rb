require "pry"

# def reformat_languages(languages)
#   new_hash = Hash.new
  
#   languages.each do |style, languages|
    
#     languages.each do |language, type|
#       binding.pry
#     if new_hash.keys.include?(language)
#         new_hash[language][:style] << style
#       else 
#         new_hash[language] = type
#         new_hash[language][:style] = [style]
        
#       end
#     end
#   end
#   new_hash
# end


def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style, languages|
    languages.each do |language, type|
      if new_hash.keys.include?(language)
        new_hash[language][:style] = style
      else
        new_hash[language] = type
        new_hash[language][:style] = [style]
      end
   end
  end
end
  


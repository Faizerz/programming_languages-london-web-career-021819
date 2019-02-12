def reformat_languages(languages_by_style)
  new_hash = {}

  languages_by_style.each do |oof, oof_hash|
    oof_hash.each do |language, language_hash|
      language_hash.each do |key, value|
        new_hash[language] = {key => value}
        new_hash[language][:style] ||= []
        new_hash[language][style].push(oof)
      end
    end
  end
  return new_hash
end

#a ||= b means, if a is undefined then assign it the value of b, otherwise leave it alone.

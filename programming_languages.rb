def reformat_languages(languages_by_style)
  new_hash = {}

  languages_by_style.each do |oof, oof_hash|
    oof_hash.each do |language, language_hash|
      if new_hash[language][:style] == nil
        new_hash[language][:style] = []
      end
      language_hash.each do |key, value|
        new_hash[language] = {key => value}
        new_hash[language][:style] << oof
      end
    end
  end
  return new_hash
end

def reformat_languages(languages_by_style)
  new_hash = {}

  languages_by_style.each do |oof, oof_hash|
    oof_hash.each do |language, language_hash|
      language_hash.each do |key, value|
        new_hash[language] << {key => value, :stlye => oof}
      end
    end
  end
end
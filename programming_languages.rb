def reformat_languages(languages_by_style)
  new_hash = {}

  languages_by_style.each do |language, language_hash|
    language_hash.each do |oof, oof_hash|
      oof_hash.each do |script, script_hash|
        script_hash.each do |type_hash|
          new_hash[script] = {:type => type_hash, :style => [oof]}
        end
      end
    end
  end
end
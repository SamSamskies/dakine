require "dakine/version"
require "engtagger"

module Dakine
  extend self

  def translate(text)
    tagged_word_pairs = tag_words(text)

    translated_text = tagged_word_pairs.map do |tw_pair|
      if is_noun?(tw_pair[:tag])
        replace_noun
      elsif tw_pair[:word] == 'the'
        'da'
      else
        tw_pair[:word]
      end
    end.join(' ')

    remove_whitespace_before_punctuation translated_text
  end

  def tag_words(text)
    tgr = EngTagger.new
    tagged_word_pairs = tgr.get_readable(text).split.map { |word| word.split '/' }
    tagged_word_pairs.map { |tw_pair| { word: tw_pair.first, tag: tw_pair.last }}
  end

  def is_noun?(tag)
    return true if tag == "NN" ||
                   tag == "NNP" ||
                   tag == "NNPS" ||
                   tag == "NNS"
  end

  def replace_noun
    'da kine'
  end

  def remove_whitespace_before_punctuation(text)
    text.gsub /\s+([.,;?!'])/, '\1'
  end
end

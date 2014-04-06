require "dakine/version"
require "engtagger"

module Dakine
  extend self

  def translate(text)
    tagged_word_pairs = tag_words(text)

    translated_text = tagged_word_pairs.map do |tw_pair|

                        if is_noun?(tw_pair)
                          tw_pair[:word] = 'da kine'
                        elsif tw_pair[:word] == 'the'
                          tw_pair[:word] = 'da'
                        end

                        tw_pair[:word]
                      end.join(' ')

    remove_whitespace_before_punctuation translated_text
  end

  def tag_words(text)
    tgr = EngTagger.new
    tagged_word_pairs = tgr.get_readable(text).split.map { |word| word.split '/' }
    tagged_word_pairs.map { |tw_pair| { word: tw_pair.first, tag: tw_pair.last }}
  end

  def is_noun?(tw_pair)
    return true if tw_pair[:tag] == "NN" ||
                   tw_pair[:tag] == "NNP" ||
                   tw_pair[:tag] == "NNPS" ||
                   tw_pair[:tag] == "NNS"
  end

  def remove_whitespace_before_punctuation(text)
    text.gsub /\s+([.,;?!])/, '\1'
  end
end

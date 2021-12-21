require 'word_tokenize'

class DocumentWordFrequency
  def initialize
  end

  def calucate_frequency(documents, word)
    tf = tf(documents, word)
    idf =  idf(documents, word)
    p "====================="
    p "word: #{word}"
    p "tf: #{tf}"
    p "idf: #{idf}"
    p "#{word}の特徴値: #{tf * idf}"
  end

  private

  def tf(documents, word)
    word_tokenizer = WordTokenize.new
    documents.each do |document_txt|
      word_tokenizer.tokenize(document_txt)
    end

    word_tokenizer.nouns.count(word) / word_tokenizer.nouns.count.to_f

  end

  def idf(documents, word)
    df = 0
    documents.each do |document_txt|
      word_tokenizer = WordTokenize.new
      word_tokenizer.tokenize(document_txt)
      if word_tokenizer.nouns.any?(word)
        df += 1
      end
    end

    return 0 if df == 0

    # wordが何本の文書にあるたか
    Math.log(documents.size/df.to_f, 2)
  end
end

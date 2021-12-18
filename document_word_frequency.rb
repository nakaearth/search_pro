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
    # documents中に wordが幾つある？
    word_tokenizer = WordTokenize.new
    documents.each do |document_txt|
      word_tokenizer.tokenize(document_txt)
    end
    # 各wordがdocumentsの中に何個含まれているかをHash形式にする
    # word_tokenizer.nouns.group_by(&:itself).map{ |key value| [key, value.count] }.to_h
    word_tokenizer.nouns.count(word)
  end

  def idf(documents, word)
    # documentsの中にwordを含めたdocumentが幾つかるか
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
    Math.log(documents.size/df.to_f)
  end
end

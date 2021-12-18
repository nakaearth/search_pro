require 'natto'

class WordTokenize
  def initialize
    @natto = Natto::MeCab.new
    @nouns = []
  end

  def tokenize(text)
    @words = @natto.parse(text) do |nm|
      feature = nm.feature.split(',')
      @nouns << nm  .surface if feature[0] == '名詞'
    end
  end

  def nouns
    @nouns
  end
end

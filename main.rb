$:.unshift(File.dirname(__FILE__))

require 'word_tokenize'

token = WordTokenize.new
token.tokenize('これは今年のヒット商品です。私はこの商品を推薦したいです')
p token.nouns
p token.verbs

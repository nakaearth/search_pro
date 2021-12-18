$:.unshift(File.dirname(__FILE__))

require 'document_word_frequency'

word_frequency = DocumentWordFrequency.new
puts '========== シャーロックホームズ： 緋のエチュード ==========-'
File.open("docs/hino.txt", mode = "rt") do |f|
  p 'word: ホームズ'
  word_frequency.calucate_frequency(f.readlines, 'ホームズ')
end
File.open("docs/hino.txt", mode = "rt") do |f|
  p 'word: シャーロック・ホームズ'
  word_frequency.calucate_frequency(f.readlines, 'シャーロック・ホームズ')
end
File.open("docs/hino.txt", mode = "rt") do |f|
  p 'word: ワトソン'
  word_frequency.calucate_frequency(f.readlines, 'ワトソン')
end
File.open("docs/hino.txt", mode = "rt") do |f|
  p 'word: ベイカー街'
  word_frequency.calucate_frequency(f.readlines, 'ベイカー街')
end

puts '========== アルセーヌ・ルパン： 鬼岩城 ==========-'
File.open("docs/kiganjyo.txt", mode = "rt") do |f|
  p 'word: ルパン'
  word_frequency.calucate_frequency(f.readlines, 'ルパン')
end
File.open("docs/kiganjyo.txt", mode = "rt") do |f|
  p 'word: 鬼岩城'
  word_frequency.calucate_frequency(f.readlines, '鬼岩城')
end

File.open("docs/kiganjyo.txt", mode = "rt") do |f|
  p 'word: 紳士怪盗'
  word_frequency.calucate_frequency(f.readlines, '紳士強盗')
end

File.open("docs/kiganjyo.txt", mode = "rt") do |f|
  p 'word: ガニマール刑事'
  word_frequency.calucate_frequency(f.readlines, 'ガニマール刑事')
end

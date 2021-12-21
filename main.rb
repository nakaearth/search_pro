$:.unshift(File.dirname(__FILE__))

require 'document_word_frequency'

word_frequency = DocumentWordFrequency.new
puts '========== シャーロックホームズ： 緋のエチュード ==========-'
File.open("docs/hino.txt", mode = "rt") do |f|
  word_frequency.calucate_frequency(f.readlines, 'ホームズ')
end
File.open("docs/hino.txt", mode = "rt") do |f|
  word_frequency.calucate_frequency(f.readlines, 'シャーロック')
end
File.open("docs/hino.txt", mode = "rt") do |f|
  word_frequency.calucate_frequency(f.readlines, 'ワトソン')
end
File.open("docs/hino.txt", mode = "rt") do |f|
  word_frequency.calucate_frequency(f.readlines, 'ベイカー街')
end
puts '========== シャーロックホームズ： 踊る人形 ==========-'
File.open("docs/odoru.txt", mode = "rt") do |f|
  word_frequency.calucate_frequency(f.readlines, 'ホームズ')
end
File.open("docs/odoru.txt", mode = "rt") do |f|
  word_frequency.calucate_frequency(f.readlines, 'シャーロック')
end
File.open("docs/odoru.txt", mode = "rt") do |f|
  word_frequency.calucate_frequency(f.readlines, 'ワトソン')
end
File.open("docs/odoru.txt", mode = "rt") do |f|
  word_frequency.calucate_frequency(f.readlines, '暗号')
end
File.open("docs/odoru.txt", mode = "rt") do |f|
  word_frequency.calucate_frequency(f.readlines, '人形')
end

puts '========== アルセーヌ・ルパン： 鬼岩城 ==========-'
File.open("docs/kiganjyo.txt", mode = "rt") do |f|
  word_frequency.calucate_frequency(f.readlines, 'ルパン')
end
File.open("docs/kiganjyo.txt", mode = "rt") do |f|
  word_frequency.calucate_frequency(f.readlines, 'スパルミエント')
end
File.open("docs/kiganjyo.txt", mode = "rt") do |f|
  word_frequency.calucate_frequency(f.readlines, 'ガニマール')
end
File.open("docs/kiganjyo.txt", mode = "rt") do |f|
  word_frequency.calucate_frequency(f.readlines, '強盗')
end



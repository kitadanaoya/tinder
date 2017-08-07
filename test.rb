#コメントアウト
puts 'こんにちは'

hensuu = '何らかのデータ'
puts hensuu

ichiniti_no_zikan = 24
ichizikan_no_hun = 60
ippun_no_byou = 60

ichiniti_no_byousuu = ichiniti_no_zikan * ichizikan_no_hun * ippun_no_byou

puts ichiniti_no_byousuu

fruits = ['林檎', 'バナナ', 'オレンジ']
fruits.each do |exile|
  puts exile
end


fruits = {
  apple: 'ringo',
  banana: 'banana',
  orange: 'mikan'
}

fruits.each do |key, value|
  puts key
  puts value
end

# a = a + b
a = 1
b = 2
a+=b
puts a


10.times do 
  number = rand(10)
  
  if number < 5
    puts number.to_s + 'は5より小さい数'
  else
    puts number.to_s + 'は5より大きい数'
  end
end

def sum(c, d)
  result = 0
  (c..d).each do |number|
    result += number
  end
  puts result
end

sum(1,9)

  
  
  
class Character
  attr_accessor :type, :hp, :power

  def initialize(type, hp, power)
    self.type = type
    self.hp = hp
    self.power = power
  end

  def name
    self.type
  end

  def attack(character)
    character.hp -= self.power
    puts "
#{self.name}
が
#{character.name}
を攻撃して
#{self.power}
ポイントのダメージを与えた！"

    if character.hp <= 0
      self.defeat(character)
    end
  end

  def defeat(character)
    puts "
#{self.name}
は
#{character.name}
を倒した！"
  end
end

class Slime < Character
  attr_accessor :suffix

  def initialize(suffix)
    super('スライム', 10, 3)
    self.suffix = suffix
  end

  def name
    super + self.suffix
  end
end

class Hero < Character
  def initialize
    super('主人公', 1000, 30)
  end
end

hero = Hero.new
slime_A = Slime.new('A')

slime_A.attack(hero)
hero.attack(slime_A)



require 'erb'

def web_page
  <<-PAGE
  <!DOCTYPE html>
  <html lang="ja">
  <head>
    <meta charset="utf-8">
    <title>タイトル</title>
  </head>
  <body>
    <p><%= Time.now %></p>
  </body>
  </html>
  PAGE
end

erb = ERB.new(web_page)
result = erb.result
puts result
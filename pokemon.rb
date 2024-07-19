module NameService
  def get_name
    @name
  end

  def change_name(new_name)
    if new_name == 'xxxx'
      puts '不適切な名前です'
    else
      @name = new_name
    end
  end
end

class Player
  include NameService
end

class Pokemon
  include NameService

  def initialize(name, type1, type2, hp)
    @name = name
    @type1 = type1
    @type2 = type2
    @hp = hp
  end

  def attack
    puts "#{@name} のこうげき！"
  end

  private

  attr_accessor :name
end

class Pikachu < Pokemon
  def initialize(name, type1, type2, hp)
    super
  end

  def attack
    puts "#{@name} の10万ボルト！"
  end
end

pikachu = Pikachu.new('ピカチュウ', 'でんき', '', 100)
pikachu.attack

puts pikachu.get_name
pikachu.change_name('ライチュウ')
puts pikachu.get_name

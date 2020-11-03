class Raccoon
  def initialize(name = 'Mimi')
    @name = name
    @joy = 70
    @satiety = 60
    @energies = 70
    @cleanliness = 70
  end

  def result
    puts "Hey. I am your raccoon. My name is #{@name}. These are my characteristics:"
    puts "Joy - #{@joy}"
    puts "Satiety - #{@satiety}"
    puts "Energies - #{@energies}"
    puts "Cleanliness - #{@cleanliness}"
  end

  def eat
    @satiety = check(@satiety + 40)
    @cleanliness = check(@cleanliness - 20)
    puts 'Yum Yum'
  end

  def walk
    if @energies >= 20
      @energies = check(@energies - 20)
      @joy = check(@joy + 30)
      @cleanliness = check(@cleanliness - 20)
      puts 'yuhuu!'
    else
      puts "your #{@name} is too tired"
    end
  end

  def bathing
    if @satiety >= 10
      @joy = check(@joy + 10)
      @satiety = check(@satiety - 10)
      @cleanliness = check(@cleanliness + 50)
      puts 'bul-bul'
    else
      puts "your #{@name} is too hungry"
    end
  end

  def sleep
    if @satiety >= 10
      @joy = check(@joy - 20)
      @satiety = check(@satiety - 10)
      @energies = check(@energies + 50)
      @cleanliness = check(@cleanliness - 10)
      puts 'z-z-z-z-z'
    else
      puts "your #{@name} is too hungry"
    end
  end

  private

  def check(attribute)
    if attribute > 100
      return 100
    end
    if attribute < 0
      return 0
    end
    attribute
  end
end

liitle_raccoon = Raccoon.new('Eli')
p liitle_raccoon
liitle_raccoon.eat
liitle_raccoon.walk
liitle_raccoon.bathing
liitle_raccoon.sleep
liitle_raccoon.result

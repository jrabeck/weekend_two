class Superhero
	
attr_accessor :name, :attack, :hitpoints, :alive, :has_secret_weapon 

	def initialize(superhero) 
	  @name = superhero[:name]
    @hitpoints = superhero[:hitpoints]
    @attack = superhero[:attack]
    @alive = true
    @has_secret_weapon = false
  end

  def hits(opponent)
    opponent.hitpoints = opponent.hitpoints - @attack
    if opponent.hitpoints < 1
    	opponent.alive = false
    end
  end

  def grabs_item
    @has_secret_weapon = true
    @attack = @attack * 20
  end

end

superman = Superhero.new({name: "Superman", hitpoints: 30, attack: 5, alive: true})
jake = Superhero.new({name: "Jake", hitpoints: 30, attack: 1, alive: true})

#FIGHT BEGINS!!! 
puts "FIGHT BEGINS!!!"
puts 

puts "#{superman.name} hits #{jake.name}"
superman.hits(jake)

puts "#{jake.name} hits #{superman.name} 5 times!!!"
5.times do
jake.hits(superman)
end

puts "#{superman.name} hits #{jake.name} 4 times!!!"
4.times do
	superman.hits(jake)
end

puts "#{jake.name} gets Kryptonite!!!"
jake.grabs_item

jake.hits(superman)
puts "#{jake.name} hits #{superman.name}!!!"

jake.hits(superman)
puts "#{jake.name} hits #{superman.name}!!!"

if superman.alive == false
	puts "Superman is dead."
end 


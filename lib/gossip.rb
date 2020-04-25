require 'csv'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save 
    CSV.open("db/gossip.csv", "a+") do |csv|
      csv << [@author, @content]
    end
  end
  
  def self.all
    all_gossips = []
    CSV.open("db/gossip.csv","r").each do |line|
      all_gossips << line
    end
    all_gossips
  end

  def self.delete_gossip
    
    puts "  Quel potin veux-tu supprimer ?" 
    print "  >> "
    gossip_to_delete = gets.chomp.to_i

    new_array_of_gossips = Gossip.all
    new_array_of_gossips.delete(new_array_of_gossips[gossip_to_delete])

    CSV.open("db/gossip.csv", "w") do |csv|
      new_array_of_gossips.each do |i|
          csv << [i[0], i[1]]
      end
    end
    
  end
end


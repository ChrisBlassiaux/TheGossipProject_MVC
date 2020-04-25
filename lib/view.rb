class View

  def create_gossip
    puts "  Créer ton potin :"
    puts "  Ton prénom :"
    print "  >> "
    author = gets.chomp
    puts "  Ton potin :"
    print "  >> "
    content = gets.chomp
    return params = { content: content, author: author }
  end

  def index_gossips(gossips)
    nb = 0
    gossips.each do |gossip|
      puts "  #{nb} Auteur : #{gossip[0]} | Potin : #{gossip[1]}" 
      nb += 1
    end
  end

  def delete_gossip_view
    puts "  Le potin choisi a été supprimé"
  end
end
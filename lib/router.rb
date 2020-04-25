require 'controller'

class Router
  
  def initialize
    @controller = Controller.new
  end

  def perform 
    

    while true

      def intro
        system('clear')
        puts ""
        puts "=" * 45
        puts (" " * 13) + "THE GOSSIP PROJECT"
        puts "=" * 45
        puts ""
        #on affiche le menu
        puts "  Tu veux faire quoi jeune moussaillons ?"
        puts "  1. Je veux créer un potin"
        puts "  2. Afficher tous les potins"
        puts "  3. Supprimer un potin"
        puts "  4. Je veux quitter l'app"
        print "  >> "
      end
      intro
      params = gets.chomp.to_i #on attend le choix de l'utilisateur
      def escape
        puts ""
        puts "  " + "_" * 40
        puts ""
      end
      escape

      case params #en fonction du choix
      when 1
        system('clear')
        intro
        escape
        puts "  Tu as choisi de créer un potin" 
        @controller.create_gossip
      when 2
        system('clear')
        intro
        escape
        puts "  Tu as choisi d'afficher tous les potins" 
        puts ""
        @controller.index_gossips
        puts ""
        puts "  Tape entrée lorsque tu as fini de regarder la liste"
        answer = gets.chomp.downcase
      when 3
        system('clear')
        intro
        escape
        puts "  Tu as choisi de supprimer un potin" 
        @controller.delete_gossip
      when 4
        puts "  À bientôt !"
        break #Ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.
      else
        puts "  Ce choix n'existe pas, merci de ressayer" #Si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". 
        #C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
      end

    end
  end

end
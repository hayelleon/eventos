require_relative "eventos"

require 'pry'

class Programa
	def initialize
		@evento ||= []
		@eventos_cadastrados ||= []		
	end

	def prompt
		puts 'Selecione uma opção:'
		puts '1 - Adicionar Evento'
		puts '2 - Listar Eventos'
		puts '3 - Alterar Evento'
		puts '4 - Sair'

		prompt = gets.to_i		
	end
	
	def run
	    option = prompt

	    while option != 5
	      	if option == 1
	        	run_event_registration
	      	elsif option == 2
	        	show_events
	    	else option == 3
	        	change_event
	      	end
	      	
	      	option = prompt
	    end
	end

	def run_event_registration
		loop do |cadastro|
			puts 'Evento: '
			event_name = gets.chomp
			if event_name = event_name.empty?
				option = run
			end
			puts 'Capacidade: '
			capacity = gets.chomp
			#capacity.is? >= 150
			puts 'Local: '
			place = gets.chomp
			puts 'Endereço: '
			address = gets.chomp
					
			evento = {
						evento: event_name,
						capacidade: capacity,
						local: place,
						address: address
					}
			@eventos_cadastrados << evento
			
			evento_criado = Evento.new(@eventos_cadastrados.event_name, @eventos_cadastrados.capacity, @eventos_cadastrados_place, @eventos_cadastrados.address)
			@evento << evento_criado
			@eventos_cadastrados << evento

			binding.pry
		end
	end

	def show_events
		puts "Existem: " + @evento.length.to_s + " eventos criados."
	    	count = 1
	    @evento.each do |evento|
	    	puts "\n#{count}."
		    puts evento
		    count += 1
	  	end		
	end

	def change_event
		puts 'Escolha um evento: '
		choose_event = gets.to_i
		puts @evento[choose_event - 1]
		puts 'Escolha um item para modificar: '
		choose_item = gets.chomp
		puts @evento.find(choose_item.to_sym)
		binding.pry

	end
end

Programa.new.run



 # ev = File.new("eventos.dat", "w")
 #    ev.puts @events
 #    ev.close
 #     puts "Evento Criado!"
 #     counter += 1
 #    end

    
 #    CSV.open("../eventos.csv", "wb") do |csv|
 #      csv << ["id_evento", "evento", "capacidade", "local", "endereco"]
 #      csv << evento_criado    
 #    end

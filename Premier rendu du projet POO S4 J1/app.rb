# Cette ligne charge le fichier contenant la classe User.
require_relative 'lib/user'
# Cette ligne charge le fichier contenant la classe Event.
require_relative 'lib/event'

# Cette ligne crée un premier utilisateur appelé julie avec son email et son âge.
julie = User.new('julie@julie.com', 35)
# Cette ligne crée un deuxième utilisateur appelé jean avec son email et son âge.
jean = User.new('jean@jean.com', 23)
# Cette ligne crée un troisième utilisateur appelé claude avec son email et son âge.
claude = User.new('claude@claude.com', 75)

# Cette ligne affiche un titre pour la section des utilisateurs.
puts '--- Utilisateurs créés ---'
# Cette ligne affiche la liste des emails de tous les utilisateurs enregistrés.
puts User.all.map(&:email)

# Cette ligne recherche l'utilisateur dont l'email est claude@claude.com.
user_found = User.find_by_email('claude@claude.com')
# Cette ligne affiche l'âge de l'utilisateur trouvé.
puts "Voici l'âge du User trouvé : #{user_found.age}"

# Cette ligne crée un événement avec une date, une durée, un titre et une liste d'invités.
my_event = Event.new(
  # Cette ligne donne la date de début de l'événement.
  '2026-03-10 09:00',
  # Cette ligne donne la durée de l'événement en minutes.
  30,
  # Cette ligne donne le titre de l'événement.
  'Standup quotidien',
  # Cette ligne donne la liste des invités de l'événement.
  ['julie@julie.com', 'jean@jean.com']
) # Fin de la création de l'événement.

# Cette ligne affiche une ligne vide puis un titre pour la section événement.
puts "\n--- Événement ---"
# Cette ligne affiche les informations formatées de l'événement.
puts my_event.to_s
# Cette ligne affiche la date de fin de l'événement au bon format.
puts "Date de fin : #{my_event.end_date.strftime('%Y-%m-%d %H:%M')}"
# Cette ligne affiche si l'événement est déjà passé.
puts "Passé ? #{my_event.is_past?}"
# Cette ligne affiche si l'événement est dans le futur.
puts "Futur ? #{my_event.is_future?}"
# Cette ligne affiche si l'événement commence dans moins de 30 minutes.
puts "Bientôt ? #{my_event.is_soon?}"

# Cette ligne décale l'événement de 24 heures.
my_event.postpone_24h
# Cette ligne affiche la nouvelle date après le report de 24 heures.
puts "Nouvelle date après report : #{my_event.start_date.strftime('%Y-%m-%d %H:%M')}"

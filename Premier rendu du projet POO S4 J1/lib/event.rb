# Cette ligne charge la bibliothèque Time pour pouvoir utiliser Time.parse.
require 'time'

# Cette classe représente un événement dans le calendrier.
class Event
  # Cette ligne crée automatiquement les méthodes de lecture et d'écriture pour les attributs de l'événement.
  attr_accessor :start_date, :duration, :title, :attendees

  # Cette méthode est appelée automatiquement quand on fait Event.new(...).
  def initialize(start_date, duration, title, attendees)
    # Cette ligne transforme la date reçue en texte en objet Time et la stocke dans @start_date.
    @start_date = Time.parse(start_date)
    # Cette ligne stocke la durée de l'événement en minutes.
    @duration = duration
    # Cette ligne stocke le titre de l'événement.
    @title = title
    # Cette ligne stocke la liste des participants de l'événement.
    @attendees = attendees
  end # Fin de la méthode initialize.

  # Cette méthode décale l'événement de 24 heures.
  def postpone_24h
    # Cette ligne ajoute 24 heures à la date de début en secondes.
    @start_date += 24 * 60 * 60
  end # Fin de la méthode postpone_24h.

  # Cette méthode calcule la date de fin de l'événement.
  def end_date
    # Cette ligne ajoute à la date de début la durée convertie en secondes.
    @start_date + (@duration * 60)
  end # Fin de la méthode end_date.

  # Cette méthode indique si l'événement a déjà commencé.
  def is_past?
    # Cette ligne compare la date de début de l'événement à l'heure actuelle.
    @start_date < Time.now
  end # Fin de la méthode is_past?.

  # Cette méthode indique si l'événement est dans le futur.
  def is_future?
    # Cette ligne renvoie l'inverse de la méthode is_past?.
    !is_past?
  end # Fin de la méthode is_future?.

  # Cette méthode indique si l'événement commence dans moins de 30 minutes.
  def is_soon?
    # Cette ligne vérifie que l'événement est après maintenant et avant ou égal à maintenant plus 30 minutes.
    @start_date > Time.now && @start_date <= Time.now + (30 * 60)
  end # Fin de la méthode is_soon?.

  # Cette méthode retourne une version lisible et bien présentée de l'événement.
  def to_s
    # Cette ligne construit une chaîne multi-lignes contenant les informations de l'événement.
    <<~EVENT
      >Titre : #{@title}
      >Date de début : #{@start_date.strftime('%Y-%m-%d %H:%M')}
      >Durée : #{@duration} minutes
      >Invités : #{@attendees.join(', ')}
    EVENT
  end # Fin de la méthode to_s.
end # Fin de la classe Event.

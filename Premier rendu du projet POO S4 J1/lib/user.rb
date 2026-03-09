# Cette classe représente un utilisateur de l'application.
class User
  # Cette ligne crée automatiquement les méthodes de lecture et d'écriture pour email et age.
  attr_accessor :email, :age

  # Cette variable de classe stocke tous les utilisateurs créés.
  @@all_users = []

  # Cette méthode est appelée automatiquement quand on fait User.new(email, age).
  def initialize(email, age)
    # Cette ligne enregistre l'email dans la variable d'instance @email.
    @email = email
    # Cette ligne enregistre l'âge dans la variable d'instance @age.
    @age = age
    # Cette ligne ajoute l'utilisateur courant à la liste de tous les utilisateurs.
    @@all_users << self
  end # Fin de la méthode initialize.

  # Cette méthode de classe retourne le tableau contenant tous les utilisateurs créés.
  def self.all
    # Cette ligne renvoie le tableau de tous les utilisateurs.
    @@all_users
  end # Fin de la méthode de classe all.

  # Cette méthode de classe cherche un utilisateur à partir de son email.
  def self.find_by_email(email)
    # Cette ligne parcourt tous les utilisateurs et renvoie celui dont l'email correspond.
    @@all_users.find { |user| user.email == email }
  end # Fin de la méthode de classe find_by_email.
end # Fin de la classe User.

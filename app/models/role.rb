#NOTE add the person object you want to attach role to...

class Role < ActiveRecord::Base
  belongs_to :person

  validates :person, presence: true
  validates :name, uniqueness: {scope: :person_id}
  validates :name, inclusion: {in: %w(admin spotlight student tutor university business)}

  scope :admins, -> { where(name: "admin") }
  
  # Changed in 22/06/2015
  scope :students, -> { where(name: "student") }
  scope :tutors, -> { where(name: "tutor") }
  scope :universities, -> { where(name: "university") }
  scope :businesses, -> { where(name: "business") }

  def self.is_admin?(person)
    exists?(person_id: person.id, name: "admin")
  end

  def self.add_admin(person)
    find_or_create_by(person_id: person.id, name: "admin")
  end

  def self.add_spotlight(person)
    find_or_create_by(person_id: person.id, name: "spotlight")
  end

  # Changed in 22/05/2015
  def self.add_student(person)
    find_or_create_by(person_id: person.id, name: "student")
  end

  def self.add_tutor(person)
    find_or_create_by(person_id: person.id, name: "tutor")
  end

  def self.add_university(person)
    find_or_create_by(person_id: person.id, name: "university")
  end

  def self.add_business(person)
    find_or_create_by(person_id: person.id, name: "business")
  end

  # Changed in 14/07/2015
  def self.is_student?(person)
    exists?(person_id: person.id, name: "student")
  end

  def self.is_tutor?(person)
    exists?(person_id: person.id, name: "tutor")
  end

  def self.is_university?(person)
    exists?(person_id: person.id, name: "university")
  end

  def self.is_business?(person)
    exists?(person_id: person.id, name: "business")
  end


end

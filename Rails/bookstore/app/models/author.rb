class Author < ApplicationRecord

  # Callbacks
  after_create -> {puts " New author has been created"}

  after_initialize do |author|
    puts "You have initialized an object."
  end

  after_find do |author|
    puts "You have found an object"
  end

  after_touch do 
    puts "You have touched an objct."
  end

  # validations
  validates :first_name, presence: true, length: { maximum: 10 }
  validates :last_name, presence: true, length: { maximum: 10 }
  validates :title, presence: true, length: { in: 5..20 }
  validate :first_name_length, :last_name_length

  def first_name_length
    if first_name.present? && first_name.length < 2
      errors.add(:first_name, "First name cannot be less than 2")
    end
  end

  def last_name_length
    if last_name.present? && last_name.length < 2
      errors.add(:last_name, "Last name cannot be less than 2")
    end
  end
end

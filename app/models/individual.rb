class Individual < ApplicationRecord
  
  has_many :note, dependent: :destroy 
  has_one :address, dependent: :destroy

  #validations
  # - inclusion
  # - length
  # - numericality
  # - presence
  # - uniqueness
  validates :age, numericality: true
  validates :first_name, :last_name, :age, :hair_color, :eye_color, :gender, :alive, presence: true
  # validates :email, uniqueness: { message: "Email already taken!" }

  # Class Method
  def self.by_first_name
    order(:first_name)
  end

# Instance Method
def full_name
  "#{self.first_name} #{self.last_name}"
  end
end 



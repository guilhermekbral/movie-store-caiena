class Movie < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 5 }
  default_scope{where("price > 0")}
  scope :expensive, -> {where('price > 10')}

 	has_many :actors, dependent: :destroy


#Forma alternativa:
#
# def self.expensive
#	where ('Price > 10')
#end
end

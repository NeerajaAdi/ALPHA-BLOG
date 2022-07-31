class Category < ApplicationRecord
 validates :name, presence: true, length: {minimum: 6, maximum: 25} #checks presence of name
 validates_uniqueness_of :name #Checks duplications
end
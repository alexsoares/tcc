class Pessoa < ActiveRecord::Base
  validates :nome, :endereco, :presence => true 
  validates :user_id, :presence => true, :uniqueness => true
  belongs_to :user
  geocoded_by :endereco
  after_validation :geocode
end

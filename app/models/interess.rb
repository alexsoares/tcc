class Interess < ActiveRecord::Base
  has_and_belongs_to_many :pessoas
end

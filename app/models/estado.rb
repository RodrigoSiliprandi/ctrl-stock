class Estado < ApplicationRecord
  validates :uf, presence: true
  validates_length_of :uf, maximum: 2
  validates :uf, uniqueness: true
end

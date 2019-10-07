class Country < ApplicationRecord
    has_many :citizens
    
    validates :name, :code, presence: true
    validates :name, uniqueness: true
end

class Country < ApplicationRecord
    has_many :citizens
    
    validates :name, :code, presence: true
end

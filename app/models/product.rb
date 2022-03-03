class Product < ApplicationRecord
    validates :code, presence: true
    validates :name, presence: true, length: {:minimum => 5}
    belongs_to :category
    
    def to_s
        code
    end
end

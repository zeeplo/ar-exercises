class Store < ActiveRecord::Base
    has_many :employees
    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: {greater_than: 0}
    validate :at_least_one_apparel

    def at_least_one_apparel
        if mens_apparel == false && womens_apparel == false
            errors.add(:id, "mens apparel and womens apparel can't both be false")
        end
    end
end

class Company < ActiveRecord::Base
    attr_accessible :logo, :name, :city, :country, :employee_satisfaction, :votes
    
    has_many :company_reviews
    has_many :companies, through: :company_reviews

    id = nil
    after_save {id = self.id}
end

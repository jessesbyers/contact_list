class Contact < ApplicationRecord
    belongs_to :user
    has_many :pets
    
    validates :name, :address, :phone, :email, presence: true
    validates :phone, numericality: true, length: { is: 10 }
    validates :email, uniqueness: { message: "must be included to submit form" } 
    validate :address_has_local_state_and_zip

    accepts_nested_attributes_for :pets, reject_if: proc { |attributes| attributes['name'].blank? || attributes['breed'].blank? }

    def address_has_local_state_and_zip
        if !address.include?("NY" && "12193")
            errors.add(:address, "must include local state (NY) and local zip code (12193)")
        end
    end


    # def pets_attributes=(pets_attributes)
    #     pets_attributes.values.each do |pet_attribute|
    #         if pet_attribute[:name] != "" && pet_attribute[:breed] != ""
    #             pet = Pet.find_or_create_by(pet_attribute)
    #             self.pets << pet
    #         end
    #     end
    # end
end

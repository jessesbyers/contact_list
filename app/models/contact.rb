class Contact < ApplicationRecord
    belongs_to :user
    has_many :pets
    accepts_nested_attributes_for :pets, reject_if: proc { |attributes| attributes['name'].blank? || attributes['breed'].blank? }


    # def pets_attributes=(pets_attributes)
    #     pets_attributes.values.each do |pet_attribute|
    #         if pet_attribute[:name] != "" && pet_attribute[:breed] != ""
    #             pet = Pet.find_or_create_by(pet_attribute)
    #             self.pets << pet
    #         end
    #     end
    # end
end

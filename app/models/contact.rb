class Contact < ApplicationRecord
    belongs_to :user
    has_many :pets
    # accepts_nested_attributes_for :pets

    def pets_attributes=(pets_attributes)
        pets_attributes.each do |pet_attribute|
            pet = Pet.create(pet_attribute)
            self.pets << pet
        end
    end

    # def categories_attributes=(category_attributes)
    #     category_attributes.values.each do |category_attribute|
    #       category = Category.find_or_create_by(category_attribute)
    #       self.post_categories.build(category: category)
    #     end
    #   end
end

contact_one = {
    :name => "Jane Smith", 
    :address => "123 Pine St, New York, NY 12121", 
    :phone => "518-872-3562", 
    :email => "jane@gmail.com"
}

contact_two = {
    :name => "John Brown", 
    :address => "85 Elm Ave, Albany, NY 12193", 
    :phone => "518-687-2654", 
    :email => "john@yahoo.com"
}

contact1 = Contact.new(contact_one)
contact1.user_id = 1
contact1.save

contact2 = Contact.new(contact_two)
contact2.user_id = 1
contact2.save


User.create(:name => "Fire Department")

pet1 = Pet.new(:name => "Pepper", :breed => "Dog")
pet2 = Pet.new(:name => "Sadie", :breed => "Dog")
pet3 = Pet.new(:name => "Snowstorm", :breed => "Cat")
pet4 = Pet.new(:name => "Sparky", :breed => "Cat")
pet5 = Pet.new(:name => "Fawkes", :breed => "Bird")

pet1.contact_id = 1
pet1.save

pet2.contact_id = 2
pet2.save

pet3.contact_id = 1
pet3.save

pet4.contact_id = 1
pet4.save

pet5.contact_id = 2
pet5.save
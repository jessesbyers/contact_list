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

Contact.create(contact_one)
Contact.create(contact_two)

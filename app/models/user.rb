class User < ApplicationRecord
    has_many :contacts
    has_many :pets, through: :contacts
end

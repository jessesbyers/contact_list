class ContactsController < ApplicationController
    before_action :set_contact, only: [:show, :edit, :update, :destroy]

    def index
        @contacts = Contact.all
    end
    
    def new
        @contact = Contact.new
        3.times { @contact.pets.build }
    end

    def create
        @contact = Contact.new(contact_params(:name, :address, :phone, :email, :pets_attributes [:name], pets_attributes: [:breed]))
        @contact.save
        redirect_to contact_path(@contact)
    end

    def edit
    end

    def update
        @contact.update(contact_params(:name, :address, :phone, :email, :pets_attributes [:name], pets_attributes: [:breed]))
        redirect_to contact_path(@contact)
    end

    def show
    end

    def destroy
        @contact.destroy
        redirect_to contacts_path
    end

    private 

    def contact_params(*args)
        params.require(:contact).permit(*args)
    end

    def set_contact
        @contact = Contact.find(params[:id])
    end
end
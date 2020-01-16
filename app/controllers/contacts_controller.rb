class ContactsController < ApplicationController
    before_action :set_contact, only: [:show, :edit, :update, :destroy]

    def index
        @contacts = Contact.all
    end
    
    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contact_params(:name, :address, :phone, :email))
        @contact.save
        redirect_to contact_path(@contact)
    end

    def edit
    end

    def update
        @contact.update(contact_params(:name, :address, :phone, :email))
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
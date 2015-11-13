class PagesController < ApplicationController

  def home
    @contact = Contact.new
  end

  def privacypolicy
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      ContactMailer.contact_email(@contact).deliver_later
    end

    respond_to do |format|
      if @contact.save
        format.html { redirect_to(root_path(anchor: 'contact'), notice: "E-mail sent successfully." ) }
        format.js { render 'create' }
      else
        format.html { redirect_to(root_path(anchor: 'contact'), notice: "Please check that all boxes are filled out.") }
        format.js { render 'errors' }
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end

end

class UsersController < ApplicationController

  #skip_before_action :authenticate_user!

  def show
    @contact = current_contact
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    current_contact.update(params_contact)
    redirect_to user_path(current_contact)
  end

  def destroy
  end

  private
  def params_user
    params.require(:contact).permit!
  end

  def set_user
    @contact = Contact.find(params[:id])
  end

end

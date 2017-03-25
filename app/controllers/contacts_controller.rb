class ContactsController < ApplicationController
  before_action :set_contact, only: [:edit, :update, :destroy]
  
  def index
    @contacts=Contact.all
  end
  
  def new
     if params[:back]
       @contact=Contact.new(contacts_params)
     else
     @contact =Contact.new
     end
  end
  
  def create
    @contact = Contact.new(contacts_params)
    if @contact.save
    redirect_to root_path,notice:"お問い合わせありがとうございました！"
    NoticeMailer.sendmail_contact(@contact).deliver
    else
     render 'new'
   end
  end
  
  def edit
    @contact = Contact.find(params[:id])
  end
  
  def update
    @contact = Contact.find(params[:id])
    @contact.update(contacts_params) 
    redirect_to new_contact_path, notice: "お問い合わせをアップデートしました！"
  end
  
  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to new_contact_path, notice: "お問い合わせを削除しました！"
  end
  
  def confirm
   @contact=Contact.new(contacts_params)
   render:new if@contact.invalid?
  end
  
  private
    def contacts_params
      params.require(:contact).permit(:name, :email, :content)
    end
    
  def set_contact
    @contact=Contact.find(params[:id])
  end
  
end

class EmailsController < ApplicationController
require 'faker'
  def index
    @emails = Email.all
  end

  def create
    @email = Email.create(object: Faker::Book.title, body: Faker::Lorem.paragraphs, read: false)
    redirect_to root_path
  end

def show
  @email = Email.find(params[:id])
  @email.update(read: true)
  end

def destroy
  @email = Email.find(params[:id])
  @email.destroy
  redirect_to emails_path
end

def update
  @email = Email.find(params[:id])
  @email.update(read:false)
end
end

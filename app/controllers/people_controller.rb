class PeopleController < ApplicationController

  load_and_authorize_resource

  respond_to :html, :json

  # GET /people
  # GET /people.json
  def index
    respond_with(@people)
  end

  # GET /people/1
  # GET /people/1.json
  def show
    respond_with(@person)
  end

  # GET /people/new
  # GET /people/new.json
  def new
    respond_with(@person)
  end

  # GET /people/1/edit
  def edit
    respond_with(@person)
  end

  # POST /people
  # POST /people.json
  def create
    @person.save
    respond_with(@person, :location => persons_path)
  end

  # PUT /people/1
  # PUT /people/1.json
  def update
    @person.update_attributes(params[:person])
    respond_with(@person)
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
    respond_with(@person)
  end
end

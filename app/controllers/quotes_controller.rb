class QuotesController < ApplicationController

  load_and_authorize_resource :person
  load_and_authorize_resource :through => :person, :shallow => true

  respond_to :html, :json

  # GET /quotes
  # GET /quotes.json
  def index
    respond_with(@quotes)
  end

  # GET /quotes/1
  # GET /quotes/1.json
  def show
    respond_with(@quote)
  end

  # GET /quotes/new
  # GET /quotes/new.json
  def new
    respond_with(@quote)
  end

  # GET /quotes/1/edit
  def edit
    respond_with(@quote)
  end

  # POST /quotes
  # POST /quotes.json
  def create
    @quote.save
    respond_with(@quote, :location => person_quotes_path(@person))
  end

  # PUT /quotes/1
  # PUT /quotes/1.json
  def update
    @quote.update_attributes(params[:quote])
    respond_with(@quote)
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    @quote.destroy
    respond_with(@quote, :location => person_quotes_path(@person))
  end
end

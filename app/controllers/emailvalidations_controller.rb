class EmailvalidationsController < ApplicationController
  # GET /emailvalidations
  # GET /emailvalidations.json
  def index
    @emailvalidations = Emailvalidation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @emailvalidations }
    end
  end

  # GET /emailvalidations/1
  # GET /emailvalidations/1.json
  def show
    @emailvalidation = Emailvalidation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @emailvalidation }
    end
  end

  # GET /emailvalidations/new
  # GET /emailvalidations/new.json
  def new
    @emailvalidation = Emailvalidation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @emailvalidation }
    end
  end

  # GET /emailvalidations/1/edit
  def edit
    @emailvalidation = Emailvalidation.find(params[:id])
  end

  # POST /emailvalidations
  # POST /emailvalidations.json
  def create
    @emailvalidation = Emailvalidation.new(params[:emailvalidation])

    respond_to do |format|
      if @emailvalidation.save
        format.html { redirect_to @emailvalidation, notice: 'Emailvalidation was successfully created.' }
        format.json { render json: @emailvalidation, status: :created, location: @emailvalidation }
      else
        format.html { render action: "new" }
        format.json { render json: @emailvalidation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /emailvalidations/1
  # PUT /emailvalidations/1.json
  def update
    @emailvalidation = Emailvalidation.find(params[:id])

    respond_to do |format|
      if @emailvalidation.update_attributes(params[:emailvalidation])
        format.html { redirect_to @emailvalidation, notice: 'Emailvalidation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @emailvalidation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emailvalidations/1
  # DELETE /emailvalidations/1.json
  def destroy
    @emailvalidation = Emailvalidation.find(params[:id])
    @emailvalidation.destroy

    respond_to do |format|
      format.html { redirect_to emailvalidations_url }
      format.json { head :no_content }
    end
  end
end

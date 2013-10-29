class ShortNamesController < ApplicationController
  # GET /short_names
  # GET /short_names.json
  def index
    @short_names = ShortName.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @short_names }
    end
  end

  # GET /short_names/1
  # GET /short_names/1.json
  def show
    @short_name = ShortName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @short_name }
    end
  end

  # GET /short_names/new
  # GET /short_names/new.json
  def new
    @short_name = ShortName.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @short_name }
    end
  end

  # GET /short_names/1/edit
  def edit
    @short_name = ShortName.find(params[:id])
  end

  # POST /short_names
  # POST /short_names.json
  def create
    @short_name = ShortName.new(params[:short_name])

    respond_to do |format|
      if @short_name.save
        format.html { redirect_to @short_name, notice: 'Short name was successfully created.' }
        format.json { render json: @short_name, status: :created, location: @short_name }
      else
        format.html { render action: "new" }
        format.json { render json: @short_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /short_names/1
  # PUT /short_names/1.json
  def update
    @short_name = ShortName.find(params[:id])

    respond_to do |format|
      if @short_name.update_attributes(params[:short_name])
        format.html { redirect_to @short_name, notice: 'Short name was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @short_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /short_names/1
  # DELETE /short_names/1.json
  def destroy
    @short_name = ShortName.find(params[:id])
    @short_name.destroy

    respond_to do |format|
      format.html { redirect_to short_names_url }
      format.json { head :no_content }
    end
  end
end

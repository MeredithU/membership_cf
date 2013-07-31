class FitnessclassesController < ApplicationController
  # GET /fitnessclasses
  # GET /fitnessclasses.json
  def index
    @fitnessclasses = Fitnessclass.all

    @past_fitnessclasses = Fitnessclass.where('startdate < ?', Date.today)
    @upcoming_fitnessclasses = Fitnessclass.where('startdate > ?', Date.today).order("startdate")


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fitnessclasses }
    end
  end

  # GET /fitnessclasses/1
  # GET /fitnessclasses/1.json
  def show
    @fitnessclass = Fitnessclass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fitnessclass }
    end
  end

  # GET /fitnessclasses/new
  # GET /fitnessclasses/new.json
  def new
    @fitnessclass = Fitnessclass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fitnessclass }
    end
  end

  # GET /fitnessclasses/1/edit
  def edit
    @fitnessclass = Fitnessclass.find(params[:id])
  end

  # POST /fitnessclasses
  # POST /fitnessclasses.json
  def create
    @fitnessclass = Fitnessclass.new(params[:fitnessclass])

    respond_to do |format|
      if @fitnessclass.save
        format.html { redirect_to @fitnessclass, notice: 'Fitnessclass was successfully created.' }
        format.json { render json: @fitnessclass, status: :created, location: @fitnessclass }
      else
        format.html { render action: "new" }
        format.json { render json: @fitnessclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fitnessclasses/1
  # PUT /fitnessclasses/1.json
  def update
    @fitnessclass = Fitnessclass.find(params[:id])

    respond_to do |format|
      if @fitnessclass.update_attributes(params[:fitnessclass])
        format.html { redirect_to @fitnessclass, notice: 'Fitnessclass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fitnessclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fitnessclasses/1
  # DELETE /fitnessclasses/1.json
  def destroy
    @fitnessclass = Fitnessclass.find(params[:id])
    @fitnessclass.destroy

    respond_to do |format|
      format.html { redirect_to fitnessclasses_url }
      format.json { head :no_content }
    end
  end
end

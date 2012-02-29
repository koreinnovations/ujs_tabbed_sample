class Entity2sController < ApplicationController
  # GET /entity2s
  # GET /entity2s.json
  def index
    @entity2s = Entity2.all

    respond_to do |format|
      format.html {
        if params[:no_layout]
          render :layout => false
        else
          render
        end
      }
      format.json { render json: @entity2s }
    end
  end

  # GET /entity2s/1
  # GET /entity2s/1.json
  def show
    @entity2 = Entity2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entity2 }
    end
  end

  # GET /entity2s/new
  # GET /entity2s/new.json
  def new
    @entity2 = Entity2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entity2 }
    end
  end

  # GET /entity2s/1/edit
  def edit
    @entity2 = Entity2.find(params[:id])
  end

  # POST /entity2s
  # POST /entity2s.json
  def create
    @entity2 = Entity2.new(params[:entity2])

    respond_to do |format|
      if @entity2.save
        format.html { redirect_to @entity2, notice: 'Entity2 was successfully created.' }
        format.json { render json: @entity2, status: :created, location: @entity2 }
      else
        format.html { render action: "new" }
        format.json { render json: @entity2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entity2s/1
  # PUT /entity2s/1.json
  def update
    @entity2 = Entity2.find(params[:id])
    @entity2s = Entity2.all
    respond_to do |format|
      if @entity2.update_attributes(params[:entity2])
        format.html { redirect_to @entity2, notice: 'Entity2 was successfully updated.' }
        format.json { head :ok }
        format.js {
          @entity2s = Entity2.all
          render :index
        }
      else
        format.html { render action: "edit" }
        format.json { render json: @entity2.errors, status: :unprocessable_entity }
        format.js {
          @entity2s = Entity2.all
          render :index
        }
      end
    end
  end

  # DELETE /entity2s/1
  # DELETE /entity2s/1.json
  def destroy
    @entity2 = Entity2.find(params[:id])
    @entity2.destroy

    respond_to do |format|
      format.html { redirect_to entity2s_url }
      format.json { head :ok }
    end
  end
end

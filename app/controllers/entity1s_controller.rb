class Entity1sController < ApplicationController
  # GET /entity1s
  # GET /entity1s.json
  def index
    @entity1s = Entity1.all

    respond_to do |format|
      format.html {
        if params[:no_layout]
          render :layout => false
        else
          render
        end
      }
      format.json { render json: @entity1s }
      format.js { render 'index.html.erb', :layout => false }
    end
  end

  # GET /entity1s/1
  # GET /entity1s/1.json
  def show
    @entity1 = Entity1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entity1 }
    end
  end

  # GET /entity1s/new
  # GET /entity1s/new.json
  def new
    @entity1 = Entity1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entity1 }
    end
  end

  # GET /entity1s/1/edit
  def edit
    @entity1 = Entity1.find(params[:id])
  end

  # POST /entity1s
  # POST /entity1s.json
  def create
    @entity1 = Entity1.new(params[:entity1])

    respond_to do |format|
      if @entity1.save
        format.html { redirect_to @entity1, notice: 'Entity1 was successfully created.' }
        format.json { render json: @entity1, status: :created, location: @entity1 }
      else
        format.html { render action: "new" }
        format.json { render json: @entity1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entity1s/1
  # PUT /entity1s/1.json
  def update
    @entity1 = Entity1.find(params[:id])
    respond_to do |format|
      if @entity1.update_attributes(params[:entity1])
        format.html { redirect_to @entity1, notice: 'Entity1 was successfully updated.' }
        format.json { head :ok }
        format.js {
          @entity1s = Entity1.all
          render :index
        }
      else
        format.html { render action: "edit" }
        format.json { render json: @entity1.errors, status: :unprocessable_entity }
        format.js {
          @entity1s = Entity1.all
          render :index
        }
      end
    end
  end

  # DELETE /entity1s/1
  # DELETE /entity1s/1.json
  def destroy
    @entity1 = Entity1.find(params[:id])
    @entity1.destroy

    respond_to do |format|
      format.html { redirect_to entity1s_url }
      format.json { head :ok }
    end
  end
end

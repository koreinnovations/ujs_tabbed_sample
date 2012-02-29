class Entity3sController < ApplicationController
  # GET /entity3s
  # GET /entity3s.json
  def index
    @entity3s = Entity3.all

    respond_to do |format|
      format.html {
        if params[:no_layout]
          render :layout => false
        else
          render
        end
      }
      format.json { render json: @entity3s }
      format.js { render 'index.html.erb', :layout => false }
    end
  end

  # GET /entity3s/1
  # GET /entity3s/1.json
  def show
    @entity3 = Entity3.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entity3 }
    end
  end

  # GET /entity3s/new
  # GET /entity3s/new.json
  def new
    @entity3 = Entity3.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entity3 }
    end
  end

  # GET /entity3s/1/edit
  def edit
    @entity3 = Entity3.find(params[:id])
  end

  # POST /entity3s
  # POST /entity3s.json
  def create
    @entity3 = Entity3.new(params[:entity3])

    respond_to do |format|
      if @entity3.save
        format.html { redirect_to @entity3, notice: 'Entity3 was successfully created.' }
        format.json { render json: @entity3, status: :created, location: @entity3 }
      else
        format.html { render action: "new" }
        format.json { render json: @entity3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entity3s/1
  # PUT /entity3s/1.json
  def update
    @entity3 = Entity3.find(params[:id])
    @entity3s = Entity3.all
    respond_to do |format|
      if @entity3.update_attributes(params[:entity3])
        format.html { redirect_to @entity3, notice: 'Entity3 was successfully updated.' }
        format.json { head :ok }
        format.js {
          @entity3s = Entity3.all
          render :index
        }
      else
        format.html { render action: "edit" }
        format.json { render json: @entity3.errors, status: :unprocessable_entity }
        format.js {
          @entity3s = Entity3.all
          render :index
        }
      end
    end
  end

  # DELETE /entity3s/1
  # DELETE /entity3s/1.json
  def destroy
    @entity3 = Entity3.find(params[:id])
    @entity3.destroy

    respond_to do |format|
      format.html { redirect_to entity3s_url }
      format.json { head :ok }
    end
  end
end

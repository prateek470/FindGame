class TodonewsController < ApplicationController
  before_action :set_todonews, only: [:show, :edit, :update, :destroy]

  # GET /todonews
  # GET /todonews.json
  def index
    @todonews = Todonew.all
  end

  # GET /todonews/1
  # GET /todonews/1.json
  def show
  end

  # GET /todonews/new
  def new
    @todonews = Todonew.new
  end

  # GET /todonews/1/edit
  def edit
  end

  # POST /todonews
  # POST /todonews.json
  def create
    @todonews = Todonew.new(todonews_params)

    respond_to do |format|
      if @todonews.save
        format.html { redirect_to @todonews, notice: 'Todonew was successfully created.' }
        format.json { render :show, status: :created, location: @todonews }
      else
        format.html { render :new }
        format.json { render json: @todonews.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todonews/1
  # PATCH/PUT /todonews/1.json
  def update
    respond_to do |format|
      if @todonews.update(todonews_params)
        format.html { redirect_to @todonews, notice: 'Todonew was successfully updated.' }
        format.json { render :show, status: :ok, location: @todonews }
      else
        format.html { render :edit }
        format.json { render json: @todonews.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todonews/1
  # DELETE /todonews/1.json
  def destroy
    @todonews.destroy
    respond_to do |format|
      format.html { redirect_to todonews_url, notice: 'Todonew was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todonews
      @todonews = Todonew.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todonews_params
      params.require(:todonews).permit(:title, :notes, :place)
    end
end

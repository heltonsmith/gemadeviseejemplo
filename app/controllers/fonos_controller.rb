class FonosController < ApplicationController
  before_action :set_fono, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /fonos or /fonos.json
  def index
    #@fonos = Fono.all
    @fonos = User.find(current_user.id).fonos
  end

  # GET /fonos/1 or /fonos/1.json
  def show
  end

  # GET /fonos/new
  def new
    @fono = Fono.new
  end

  # GET /fonos/1/edit
  def edit
  end

  # POST /fonos or /fonos.json
  def create
    @fono = Fono.new(fono_params)

    respond_to do |format|
      if @fono.save
        format.html { redirect_to fono_url(@fono), notice: "Fono was successfully created." }
        format.json { render :show, status: :created, location: @fono }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fono.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fonos/1 or /fonos/1.json
  def update
    respond_to do |format|
      if @fono.update(fono_params)
        format.html { redirect_to fono_url(@fono), notice: "Fono was successfully updated." }
        format.json { render :show, status: :ok, location: @fono }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fono.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fonos/1 or /fonos/1.json
  def destroy
    @fono.destroy

    respond_to do |format|
      format.html { redirect_to fonos_url, notice: "Fono was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fono
      @fono = Fono.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fono_params
      params.require(:fono).permit(:numero, :user_id)
    end
end

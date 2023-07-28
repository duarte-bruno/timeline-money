class EntryTypesController < ApplicationController
  before_action :authorize_request
  before_action :set_entry_type, only: %i[ show update destroy ]

  # GET /entry_types
  def index
    @entry_types = EntryType.all

    render json: @entry_types
  end

  # GET /entry_types/1
  def show
    render json: @entry_type
  end

  # POST /entry_types
  def create
    @entry_type = EntryType.new(entry_type_params)

    if @entry_type.save
      render json: @entry_type, status: :created, location: @entry_type
    else
      render json: @entry_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entry_types/1
  def update
    if @entry_type.update(entry_type_params)
      render json: @entry_type
    else
      render json: @entry_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entry_types/1
  def destroy
    @entry_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_type
      @entry_type = EntryType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entry_type_params
      params.require(:entry_type).permit(:name)
    end
end

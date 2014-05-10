# Codes controller
class CodesController < ApplicationController
  respond_to :html
  expose(:code, attributes: :code_params)

  # GET /codes
  # GET /codes.json
  def index
    @codes = Code.where(parent_id: nil)
  end

  # POST /codes
  # POST /codes.json
  def create
    code.save
    respond_with code
  end

  # PATCH/PUT /codes/1
  # PATCH/PUT /codes/1.json
  def update
    code.save
    respond_with code
  end

  # DELETE /codes/1
  # DELETE /codes/1.json
  def destroy
    code.destroy
    respond_with code
  end

  private

  # Never trust parameters from the scary internet.
  def code_params
    params.require(:code).permit(:user, :source, :parent_id)
  end
end

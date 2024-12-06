class Tormenta20::CharacterSheetsController < ApplicationController
  before_action :set_tormenta20_character_sheet, only: %i[ show edit update destroy ]

  # GET /tormenta20/character_sheets or /tormenta20/character_sheets.json
  def index
    @tormenta20_character_sheets = Tormenta20::CharacterSheet.all
  end

  # GET /tormenta20/character_sheets/1 or /tormenta20/character_sheets/1.json
  def show
  end

  # GET /tormenta20/character_sheets/new
  def new
    @tormenta20_character_sheet = Tormenta20::CharacterSheet.new
  end

  # GET /tormenta20/character_sheets/1/edit
  def edit
  end

  # POST /tormenta20/character_sheets or /tormenta20/character_sheets.json
  def create
    @tormenta20_character_sheet = Tormenta20::CharacterSheet.new(tormenta20_character_sheet_params)

    respond_to do |format|
      if @tormenta20_character_sheet.save
        format.html { redirect_to @tormenta20_character_sheet, notice: "Character sheet was successfully created." }
        format.json { render :show, status: :created, location: @tormenta20_character_sheet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tormenta20_character_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tormenta20/character_sheets/1 or /tormenta20/character_sheets/1.json
  def update
    respond_to do |format|
      if @tormenta20_character_sheet.update(tormenta20_character_sheet_params)
        format.html { redirect_to @tormenta20_character_sheet, notice: "Character sheet was successfully updated." }
        format.json { render :show, status: :ok, location: @tormenta20_character_sheet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tormenta20_character_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tormenta20/character_sheets/1 or /tormenta20/character_sheets/1.json
  def destroy
    @tormenta20_character_sheet.destroy!

    respond_to do |format|
      format.html { redirect_to tormenta20_character_sheets_path, status: :see_other, notice: "Character sheet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tormenta20_character_sheet
      @tormenta20_character_sheet = Tormenta20::CharacterSheet.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def tormenta20_character_sheet_params
      params.expect(tormenta20_character_sheet: [ :name, :description, :data, :temp, :creation_step, :levelling_up ])
    end
end

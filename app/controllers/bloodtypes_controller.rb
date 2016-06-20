class BloodtypesController < ApplicationController
  def index
  	@bloodtypes = Bloodtype.all
  end
  def show
  	@bloodtype = Bloodtype.find(params[:id])
  	@donor = Donor.where(bloodtype_id: @bloodtype.id)
  end
end

class DonationsController < ApplicationController
  def index
  	@donation =Donation.all
  	# @donation = Donation.where(donor_id: @donor.id)

  end

  def new
  	@donation = Donation.new
  end

  def create
  	@donation = Donation.new(donation_params)
  	@donation.save
  	if @donation.save
      flash[:notice] = "Donation is created"
    else
      flash[:alert] = "There was a problem. please, try again."
    end
    redirect_to donors_path
    # redirect_to donor_path(@donor)

  end

  private
  def donation_params
  	params.require(:donation).permit(:donor_id, :patient_id)
  end
end

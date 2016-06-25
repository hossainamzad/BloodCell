class DonationsController < ApplicationController
  def index
  	@donation =Donation.all
  	# @donation = Donation.where(donor_id: @donor.id)

  end

  def new
  	@donation = Donation.new
  end

  def create
    # @donor = Donor.find(params[:id])
  	@donation = Donation.new(donation_params)
  	@donation.save
  	if @donation.save
      flash[:notice] = "Donation is created"
      # @donor = Donor.where(id: @donation.donor_id)
      # puts @donor
      # # puts ">>>>>>>>>>>>" + @donor.ready
      # @donor.update(ready: Time.now)
    else
      flash[:alert] = "There was a problem. please, try again."
    end
    # redirect_to donors_path
    redirect_to :back
    

  end

  private
  def donation_params
  	params.require(:donation).permit(:donor_id, :patient_id)
  end
end

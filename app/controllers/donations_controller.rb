class DonationsController < ApplicationController
  def index
  	@donation =Donation.all
  	# @donation = Donation.where(donor_id: @donor.id)

  end
end

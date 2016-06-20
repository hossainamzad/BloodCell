class HomeController < ApplicationController
	
  def homepage
		  @disable_nav = true
		  # to not show the navbar on the aunch page. Also look at the code in application controller to see how you render the partial from a partial named _header in the layouts directory.

  end

  def main
  	@donors = Donor.all
  	# @donor = Donor.find(params[:id])
  end
  # //this line of code breaks the page. But, the same line works on the DonorsController// look at the donorscontroller.
end

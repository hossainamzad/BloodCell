class DonorsController < ApplicationController
  def index
  	if params[:search]
	  	@donors = Donor.search(params[:search])
	  else
	  	@donors = Donor.all
	  end
  end

  def show
  	@donor = Donor.find(params[:id])
    @bloodtype = Bloodtype.where(id: @donor.bloodtype_id).first
    # @donation =Donation.where(donors_id: params[:id])
    # @donation = Donation.length
  end

  def new
  	@donor = Donor.new
  # 	if @donor = Donor.new
  # # success
		# else
  # # error handling
		# end
  end

  def create
  	@donor = Donor.new(donor_params)
    @donor.save
    if @donor.save
      flash[:notice] = "Donor is created"
    else
      flash[:alert] = "There was a problem. please, try again."
    end
    redirect_to donors_path
  end

  def edit
  	@donor = Donor.find(params[:id])
  end

  def update
  	# @donor.update(params[:donor])


  	@donor = Donor.find(params[:id])
    @donor.update(donor_params)
    @donor.save
    redirect_to donor_path(@donor)
  end

  def destroy
  	 @donor = Donor.find(params[:id])
     @donor.destroy
     redirect_to donors_path
  end

  private

  def donor_params
  	params.require(:donor).permit(:name,:email,:phone,:bloodtype_id,:ready)
  end

end

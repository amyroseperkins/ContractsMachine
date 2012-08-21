class ContractsController < ApplicationController

  filter_resource_access
  before_filter :get_template_alt_provs
  
  def index
    @contracts = Contract.all
  end
  
  def show
  #  @contract = Contract.find(params[:id])
	respond_to do |format|
		format.html{}
		format.pdf{}
	end
	
	#def summary
	#  @contract = Contract.find(params[:id])
	#  format.pdf{}
  #end   
	
  end
  
  def new
    @contract = Contract.new
  end
  
  def create
    @contract = Contract.new(params[:contract])
    @contract.alt_provs.each do |alt_prov|        # each alt_prov assosiated with a single contract, only has its parent_id filled in the contract form ...
	    alt_prov.attributes = alt_prov.parenthash   # so, when contract is saved, the remaining attributes for the alt_prov, are looked up from the parent alt_prov 
	  end                                           # and assigned to the alt_prov assosiated with the contract.
    if @contract.save
      flash[:notice] = "Successfully created contract."
      redirect_to @contract
    else
      render :action => 'new'
    end
  end
  
  def edit
    @contract = Contract.find(params[:id])
  end
  
  def update
    @contract = Contract.find(params[:id])
    @contract.alt_provs.each do |alt_prov|        # each alt_prov assosiated with a single contract, only has its parent_id filled in the contract form ...
      alt_prov.attributes = alt_prov.parenthash   # so, when contract is saved, the remaining attributes for the alt_prov, are looked up from the parent alt_prov 
    end                                           # and assigned to the alt_prov assosiated with the contract.
    if @contract.update_attributes(params[:contract])
      flash[:notice] = "Successfully updated contract."
      redirect_to @contract
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @contract = Contract.find(params[:id])
    @contract.destroy
    flash[:notice] = "Successfully destroyed contract."
    redirect_to contracts_url
  end

  def get_template_alt_provs 
    @template_alt_provs = AltProv.find_all_by_parent_id(1)
  end

end

class ApprovalController < ApplicationController
  def index
    @orgs = Organization.where(approved: false)
    @opps = Opportunity.where(approved: false)
  end

  # approval process on click
  def approve_org
    # Checks for org id parameter
    if params[:org_id].nil?
      # redirects back if no id is found
      flash[:notice]="Not a valid organization: No ID given for approval"
      redirect_back(fallback_location: root_path)
    end

    # org object to be changed
    org = Organization.find(params[:org_id])

    # If the org Id is nil then also redirect back
    if org.nil?
      flash[:notice]="Not a valid organization: No Such Organization"
      redirect_back(fallback_location: root_path)
    end

    # If valid org id then approved becomes true
    org.approved = true
    # saves the updated org status to the database
    org.save!
    flash[:notice]="Successfully Approved."
    redirect_back(fallback_location: root_path)

  end

    # approval process on click
    def approve_opp
      # Checks for opp id parameter
      unless params.has_key?(:opp_id)
        # redirects back if no id is found
        redirect_back(fallback_location: root_path)
      end
  
      # opp object to be changed
      opp = Opportunities.find(params[:opp_id])
  
      # If the opp Id is nil then also redirect back
      if opp.nil?
        redirect_back(fallback_location: root_path)
      end
  
      # If valid opp id then approved becomes true
      opp.approved = true
      # saves the updated org status to the database
      opp.save!
      redirect_back(fallback_location: root_path)
  
    end
end

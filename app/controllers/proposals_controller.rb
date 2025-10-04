class ProposalsController < ApplicationController
  allow_unauthenticated_access
  
  def new
    @proposal = Proposal.new
  end

  def create
    proposal = Proposal.create(proposal_params)
    redirect_to proposal 
  end

  def index
    @proposals = Proposal.all
  end

  def show
    @proposal = Proposal.find(params[:id])
  end

  private
    def proposal_params
      params.expect(proposal: %w[ title accepts_commitments_from accepts_commitments_until strategy])
    end
end

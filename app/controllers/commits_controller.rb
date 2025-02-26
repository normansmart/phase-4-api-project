class CommitsController < ApplicationController
  before_action :set_commit, only: [:show, :update, :destroy]

  # GET /commits
  def index
    @commits = Commit.all

    render json: @commits
  end

  # GET /commits/1
  def show
    render json: @commit
  end

  # POST /commits
  def create
    @commit = Commit.new(commit_params)

    if @commit.save
      render json: @commit, status: :created, location: @commit
    else
      render json: @commit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /commits/1
  def update
    if @commit.update(commit_params)
      render json: @commit
    else
      render json: @commit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /commits/1
  def destroy
    @commit.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commit
      @commit = Commit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def commit_params
      params.permit(:user_id, :bank_id, :goal_id, :transfer_amount)
    end
end

class Api::V1::ProfilesController < ApplicationController
  def show
    @profile = Profile.first
    render json: @profile
  end

  def update
    @profile = Profile.first

    if @profile.update(profile_params)
      render json: @profile
    else
      render json: { errors: @profile.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :description, :github_url)
  end
end

class UpgradesController < ApplicationController
  def index
    @upgrades = Upgrade.all
  end

  def new
    @upgrade = Upgrade.new
  end

  def create
    Upgrade.create(upgrade_params)
    redirect_to @upgrades_path
  end




  private

  def upgrade_params
    params.require(:upgrade).permit(:title, :idea)
  end



end

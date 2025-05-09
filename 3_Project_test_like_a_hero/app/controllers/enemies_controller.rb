class EnemiesController < ApplicationController
  def update
    if @enemy.update(enemy_params)
      render json: @enemy, status: :ok
    else
      render json: { errors: @enemy.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @enemy.destroy
    render json: { message: "Enemy deleted" }, status: :no_content
  end

  before_action :set_enemy

  private

  def enemy_params
    params.permit(:name, :power_base, :power_step, :level, :kind)
  end

  def set_enemy
    @enemy = Enemy.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Enemy not found" }, status: :not_found
  end
end

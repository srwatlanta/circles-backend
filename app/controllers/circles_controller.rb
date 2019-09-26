class CirclesController < ApplicationController
    skip_before_action :authorized

  def show
    @circle = Circle.find_by(id: params[:id])
    render json: {circle: CircleSerializer.new(@circle)}, status: :accepted
  end

  def create
    @circle = Circle.create(circle_params)
    if @circle.valid?
      render json: { circle: CircleSerializer.new(@circle)}, status: :created
    else
      render json: { error: "failed to create circle" }, status: :not_acceptable
    end
  end

  def update
    @circle = Circle.find_by(id: params[:id])
    @circle.update(circle_params)
    render json: { circle: CircleSerializer.new(@circle)}, status: :updated
  end

  def destroy
    @circle = circle.find_by(id: params[:id])
    @circle.destroy
  end

  private

  def circle_params
    params.require(:circle).permit(:img_url, :name)
  end
end

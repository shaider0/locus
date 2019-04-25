class GoalsController < ProtectedController
  before_action :authenticate
  before_action :set_goal, only: [:show, :update, :destroy]

  # GET /goals
  def index
    @goals = current_user.goals.all
    render json: @goals
  end

  # GET /goals/1
  def show
    render json: @goal
  end

  # POST /goals
  def create
    @goal = current_user.goals.build(goal_params)

    if @goal.save
      render json: @goal, status: :created, location: @goal
    else
      render json: @goal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /goals/1
  def update
    if @goal.update(goal_params)
      render json: @goal
    else
      render json: @goal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /goals/1
  def destroy
    @goal.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_goal
    @goal = current_user.goals.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def goal_params
    params.require(:goal).permit(:title, :description)
  end
end

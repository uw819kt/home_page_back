class Api::V1::SkillsController < ApplicationController
  before_action :set_skill, only: [ :show, :update, :destroy ]

  # GET /api/v1/skills
  def index
    @skills = Skill.ordered

    # カテゴリ別にグループ化して返す
    grouped_skills = @skills.group_by(&:category)

    render json: {
      skills: grouped_skills,
      categories: Skill::CATEGORIES
    }
  end

  # GET /api/v1/skills/:id
  def show
    render json: @skill
  end

  # POST /api/v1/skills
  def create
    @skill = Skill.new(skill_params)

    if @skill.save
      render json: @skill, status: :created
    else
      render json: { errors: @skill.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/skills/:id
  def update
    if @skill.update(skill_params)
      render json: @skill
    else
      render json: { errors: @skill.errors.full_messages },
             status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/skills/:id
  def destroy
    @skill.destroy
    head :no_content
  end

  private

  def set_skill
    @skill = Skill.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Skill not found" }, status: :not_found
  end

  def skill_params
    params.require(:skill).permit(:name, :description)
  end
end

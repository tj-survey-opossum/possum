class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]

  # GET /surveys
  def index
    @surveys = Survey.all
  end

  # GET /surveys/1
  def show
  end

  # GET /surveys/new
  def new
    @survey = Survey.new
    @survey.questions.build
    @options = Question.type_names
    @survey.author = Author.find(params[:format])
  end

  # GET /surveys/1/edit
  def edit
    @survey.questions.build
    @options = Question.type_names
  end

  # POST /surveys
  def create
    @survey = Survey.new(survey_params)

    if @survey.save
      redirect_to dashboard_author_url(@survey.author_id), notice: 'Survey was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /surveys/1
  def update
    if @survey.update(survey_params)
      redirect_to dashboard_author_url(@survey.author_id), notice: 'Survey was successfully updated.'
    else
      render :edit
    end
  end

  def publish
    if survey.questions.empty?
      redirect_to dashboard_author_url(@survey.author_id), alert: "Survey must have questions to be published."
    else
      @survey.published = true
      redirect_to dashboard_author_url(@survey.author_id), notice: "Survey was successfully published."
    end
  end

  def unpublish

  end

  # DELETE /surveys/1
  def destroy
    @survey.destroy
    redirect_to dashboard_author_url(@survey.author_id), notice: 'Survey was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def survey_params
      params.require(:survey).permit(:author_id, :title, :description, :published,
                    questions_attributes: [:id, :question_type, :prompt, :_destroy])
    end
end

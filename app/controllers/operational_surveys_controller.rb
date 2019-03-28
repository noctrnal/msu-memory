class OperationalSurveysController < ApplicationController
  before_action :set_subject, only: [:index, :new, :create]
  before_action :set_survey, only: [:index, :new, :create]

  def index
    possible_spans = operational_spans

    if possible_spans.empty?
      redirect_to controller: 'surveys', action: 'index'
    end

    @initial = @survey.operational_instructions
    @setting = Setting.first
  end

  def new
    @operational_survey = OperationalSurvey.new
    @span = operational_spans.sample

    @span.to_i.times do
      # @operational_survey.operational_questions.build
    end
  end

  def create
    if @survey.operational_instructions == false
      @survey.operational_instructions = true
      @survey.save
    end
  end

  private
    def operational_spans
      possible_spans = []

      (2..7).each do |span|
        count = OperationalSurvey.where(:survey => @survey.id, :span => span).count

        if count < 3
          possible_spans << span
        end
      end

      possible_spans
    end

    def operational_survey_params
      params.require(:operational_survey).permit(
        :survey,
        operational_questions_attributes: [
          :id,
          :equation,
          :memory,
          :recall,
          :veracity,
          :_destroy,
        ],
      )
    end

    def set_span
      @span = params[:span]

      if @span.nil?
        render file: "#{Rails.root}/public/404.html", layout: false, status: 404
      end
    end

    def set_subject
      @subject = session[:subject]

      if @subject.nil?
        render file: "#{Rails.root}/public/404.html", layout: false, status: 404
      end
    end

    def set_survey
      @survey = Survey.find_by(:subject => @subject)

      if @survey.nil?
        redirect_to controller: 'surveys', action: 'new'
      end
    end
end

class SurveysController < ApplicationController
  def index
    @subject = params[:subject]

    if @subject.nil?
      render file: "#{Rails.root}/public/404.html", layout: false, status: 404
    else
      session[:subject] = @subject
    end
  end

  def new
    @subject = session[:subject]

    if @subject.nil?
      render file: "#{Rails.root}/public/404.html", layout: false, status: 404
    end

    @survey = Survey.find_by(:subject => @subject)

    if @survey.nil?
      @survey = Survey.create(:subject => @subject)
    end

    @trial = select_trial

    redirect_to controller: "#{@trial}_surveys", action: 'index'
  end

  private
    def select_trial
      trials = ['operational', 'reading']

      trials.sample
      'operational' # TODO: randomize this when reading is available.
    end
end

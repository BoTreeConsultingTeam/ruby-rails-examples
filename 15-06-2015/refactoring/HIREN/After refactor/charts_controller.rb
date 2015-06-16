class ChartsController < ApplicationController

  before_filter :get_date
  # before_filter :google_chart_init

  def chart_by_learn
    report = LearningReportService.new(current_user, @date)
    @learn_chart = report.learning_report
    @tag_chart = report.tag_usage_report
  end

  private
    def get_date
      start_date = params[:start_date] || Date.today
      @days = params[:days] ? params[:days] : 30
      @date = start_date - @days
    end
end

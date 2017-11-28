class CalendarsController < ApplicationController
  # -- 一覧
  def index
    @calendars = Calendar.all

    respond_to do |format|
      format.any { render json: @calendars }
    end
  end

  # -- 参照
  def show
    @calendar = Calendar.find_by(key: params[:key])

    respond_to do |format|
      format.any { render json: @calendar }
    end
  end

end

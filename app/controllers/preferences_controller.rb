class PreferencesController < ApplicationController
  def new
    @preference = Preference.new
  end

  def create
    @preference = preference.new(params[:preference])
    if @preference.save
      redirect_to @preference
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end
end

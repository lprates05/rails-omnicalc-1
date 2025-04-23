class MathController < ApplicationController

  def calculation

    render({:template => "calculation_templates/square_new"})
  end

end

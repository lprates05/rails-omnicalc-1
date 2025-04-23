class MathController < ApplicationController

  def calculation

    render({:template => "calculation_templates/square_new"})
  end

  def square_new

    render({:template => "calculation_templates/square_new"})
  end

  def square_results
    @the_num = params.fetch("number").to_f
    @the_result = @the_num **2
    render({:template => "calculation_templates/square_results"})
  end

  def square_root_new

    render({:template => "calculation_templates/square_root_new"})
  end

  def square_root_results
    @the_num = params.fetch("number").to_f
    @the_result = @the_num **(0.5)
    render({:template => "calculation_templates/square_root_results"})
  end

  def payment_new

    render({:template => "calculation_templates/payment_new"})
  end

  def payment_results
    @apr = params.fetch("apr").to_f
    @years = params.fetch("years").to_i
    @principal = params.fetch("principal").to_f

    @payment = (@apr/100/12 * @principal) / (1-((1 + @apr/100/12)**(-(@years*12))))

    @apr_print = @apr.round(4).to_fs(:percentage, precision: 4)
    @principal_print = @principal.to_fs(:currency)
    @payment_print = @payment.to_fs(:currency) 
    render({:template => "calculation_templates/payment_results"})
  end

  def random_new

    render({:template => "calculation_templates/random_new"})
  end

  def random_results
    @num_min = params.fetch("num_min").to_f
    @num_max = params.fetch("num_max").to_f
  
    @num_random = rand(@num_min..@num_max)
    render({:template => "calculation_templates/random_results"})
  end
end

class CalculationsController < ApplicationController


  def flexible_square

    @user_num = params["number"].to_f

    render("calculations/flexible_square.html.erb")
  end

  def flexible_square_root

    @user_num = params["number"].to_f

    render("calculations/flexible_square_root.html.erb")
  end

  def flexible_payment

    @user_interest_rate = params["interest_rate"].to_f
    @user_principal = params["principal"].to_f
    @user_years = params["years"].to_f

    monthly_int_rate = @user_interest_rate/12.0/10000
    months = @user_years*12
    numerator = monthly_int_rate*@user_principal
    denomanator = 1-(1+monthly_int_rate)**-months

    @monthly_payment = numerator/denomanator


    render("calculations/flexible_payment.html.erb")
  end

  def flexible_random

    @user_min = params["min"].to_f
    @user_max = params["max"].to_f

    @random_number = rand(@user_max-@user_min)+@user_min+1

    render("calculations/flexible_random.html.erb")
  end


  def square_form

    render("calculations/square_form.html.erb")
  end

  def square

    @user_num = params[:user_num].to_f
    @user_square = @user_num **2

    render("calculations/square.html.erb")
  end

  def square_root_form

    render("calculations/square_root_form.html.erb")
  end

  def square_root

    @user_num = params[:user_num].to_f

    render("calculations/square_root.html.erb")
  end

  def payment_form

    render("calculations/payment_form.html.erb")
  end

  def payment

    @user_interest_rate = params["user_APR"].to_f
    @user_principal = params["user_pv"].to_f
    @user_years = params["user_years"].to_f

    monthly_int_rate = @user_interest_rate/12.0/100
    months = @user_years*12
    numerator = monthly_int_rate*@user_principal
    denomanator = 1-(1+monthly_int_rate)**-months

    @monthly_payment = numerator/denomanator
    render("calculations/payment.html.erb")

  end



end

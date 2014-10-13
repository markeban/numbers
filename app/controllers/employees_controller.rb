class EmployeesController < ApplicationController
  def workers
  end

  def save
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]
    @job_title = params[:job_title]
    @salary = params[:salary]
    @phone_number = params[:phone_number]
    @gender = params[:gender]

    Employee.create(:first_name => @first_name, )

  end
end

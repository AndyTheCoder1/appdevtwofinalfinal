class UserController < ApplicationController
  def show

    looking = current_user.id
    check = UserDatum.where({ :owner => looking })
    if check.first == nil
      user = UserDatum.new
      user.owner_id = current_user.id
      user.save
    else

    end


    
  end

  def explore

  end


  def update
    input_name = params.fetch("query_name")
    input_religion = params.fetch("query_religion")
    input_politics = params.fetch("query_politics")
    input_height =  params.fetch("query_height")
    input_home =  params.fetch("query_home")
    input_age = params.fetch("query_age")
    input_job =  params.fetch("query_job")
    input_school =  params.fetch("query_school")
    input_gender =  params.fetch("query_gender")
    input_drinking = params.fetch("query_drinking")
    input_smoking =  params.fetch("query_smoking")
    input_school =  params.fetch("query_undergrad")
    input_interest =  params.fetch("query_preferences")

    matching_data = UserDatum.where({ :id => current_user.id})

    the_data = matching_data.first

    the_data.full_name = input_name
    the_data.religion = input_religion
    the_data.political_affiliation = input_politics
    the_data.height = input_height
    the_data.hometown = input_home
    the_data.age = input_age
    the_data.job_title = input_job
    the_data.school = input_school
    the_data.gender = input_gender
    the_data.drinking = input_drinking
    the_data.smoking = input_smoking
    the_data.undergrad_school = input_school

    if input_interest == "men"
      the_data.interested_in_men = TRUE
      the_data.interested_in_women = FALSE
      the_data.interested_in_men_and_women = FALSE

    elsif input_interest == "women"
      the_data.interested_in_men = FALSE
      the_data.interested_in_women = TRUE
      the_data.interested_in_men_and_women = FALSE
    
    else 
      the_data.interested_in_men = TRUE
      the_data.interested_in_women = TRUE
      the_data.interested_in_men_and_women = TRUE
    end

    the_data.save

    user_id = current_user.id

    redirect_to("/#{user_id}", { :notice => "update created successfully." })


  end


end
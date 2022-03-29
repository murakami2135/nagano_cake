class ApplicationController < ActionController::Base



  def move_to_signed_in
    unless admin_signed_in?
      redirect_to admin_session_path
    end
  end


  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_path
    when Customer
      '/'
    end
  end


  def after_sign_out_path_for(resource)
    case resource
    when :admin
      new_admin_session_path
    when :customer
      '/'
    end
  end


end

helpers do

  def current_user
        # Por hacer: devolver la instancia del usuario logueado si hay uno.
<<<<<<< HEAD
    if session[:user_id]
      User.find_by(id: session[:user_id])
    else
      nil
    end
=======
>>>>>>> upstream/master

  end

end

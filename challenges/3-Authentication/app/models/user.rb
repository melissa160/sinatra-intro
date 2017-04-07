class User < ActiveRecord::Base
  # Por hacer : Usar bcrypt para encryptar password y autenticar usuarios
  include BCrypt

  def password
    Password.new(password_hash)
  end

  def password=(password)
    self.password_hash = Password.create(password)
  end

  def authenticate(password)
    self.password == password
  end

end

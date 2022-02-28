class User < ApplicationRecord
  def self.from_omniauth(auth)
    require "pry"; binding.pry
    # Creates a new user only if it doesn't exist
    where(email: auth.info.email).first_or_initialize do |user|
      user.name = auth.info.name
      user.email = auth.info.email
    end
  end

end

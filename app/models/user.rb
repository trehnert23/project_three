class User < ActiveRecord::Base
	has_secure_password

	validates :email, :password_digest, presence: true, length: { minimum: 3 }
	validates :email, uniqueness: true
	validates :password, length: { in: 3..10 }

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end

end
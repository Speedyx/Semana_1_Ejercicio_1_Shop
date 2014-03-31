class User < ActiveRecord::Base
    has_secure_password
    #attr_accessible :name, :email, :password, :password_confirmation

    validates_presence_of :password, :on => :create
    validates_presence_of :email
    validates_uniqueness_of :email
    validates_presence_of :name
    validates_uniqueness_of :name

    def self.authenticate(email, password)
        user = find_by_email(email)
        if user && user.password == password
            user
        else
            nil
        end
    end

end

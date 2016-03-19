class User < ActiveRecord::Base
    before_save { self.email = email.downcase }
    validates( :name, presence: true, length: { maximum: 50 })
    #This is the full regex for matching email addresses according to the official email standard
     VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    # ^^ This is the pragmatic version ^^ of the email regex that I am using - Amirah Chamble
    #only email addresses that match this pattern will be considered valid
    validates( :email, presence: true, length: { maximum: 255 }, 
    format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false } ) 
    
    #rails method for secure password machinery
    has_secure_password
    # this method allows ability to save a securely hashed 'password_digest'rai attribute to the database, a pair
    #of virtual attributes, including presence validations upon object createion and a validation requiring 
    #that they match. An authenticate method that returns the user when the password is correct(and false 
    #otherwise)
    validates :password, length: { minimum: 6 }
end

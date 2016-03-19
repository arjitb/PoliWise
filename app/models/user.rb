class User < ActiveRecord::Base
    validates( :name, presence: true, length: { maximum: 50 })
    #This is the full regex for matching email addresses according to the official email standard
     VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    # ^^ This is the pragmatic version ^^ of the email regex that I am using - Amirah Chamble
    #only email addresses that match this pattern will be considered valid
    validates( :email, presence: true, length: { maximum: 255 }, 
    format: { with: VALID_EMAIL_REGEX }, uniqueness: case_sensitive: false ) 
end

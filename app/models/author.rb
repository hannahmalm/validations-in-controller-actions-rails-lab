class Author < ActiveRecord::Base
    #author name cannot be blank
    validates :name, presence: true
    #author email is unique
    validates :email, uniqueness:true
    #change authorscontroller #create to re render form is new author is invalid
end

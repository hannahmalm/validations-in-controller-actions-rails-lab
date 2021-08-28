class Post < ActiveRecord::Base
    #post title cannot be blank
    validates :title, presence: true
    #post content is at least 100 characters
    validates :content, length: {minimum: 100}
    #post category is Fiction or Non Fiction - same as lab before
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    
    #change postscontroller#update to re render from if updated post is invalid
end

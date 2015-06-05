class Post < ActiveRecord::Base
  has_many :comments
  validates :name, presence: true
  validates :content, presence: true


  def amount
    return "no comments yet" if comments.none?
    comments.size
  end

end
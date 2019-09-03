class User < ApplicationRecord
  has_many :microposts
  validates :name, presence: true
  validates :email, presence: true

  def first_post
    if microposts.any?
      microposts.order('created_at DESC').first.content
    else
      ''
    end
  end
end

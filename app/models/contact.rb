class Contact < ActiveRecord::Base

  validates :name, presence: true, length: {minimum:3, maximum:100}
  validates :email, presence: true, length: {minimum:6, maximum:150}
  
end

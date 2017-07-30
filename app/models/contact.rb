class Contact < ActiveRecord::Base
  
  validates :name, presence: true
  validates :email, presence: true, :format => { :with => %r{.+@.+\..+} }
  validates :message, presence: true

end
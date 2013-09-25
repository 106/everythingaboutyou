class GmailAccount < ActiveRecord::Base
  attr_accessible :password, :user_id, :username
  belongs_to :user

  def connect
  	Gmail.connect(self.username, self.password)
  end
  
end

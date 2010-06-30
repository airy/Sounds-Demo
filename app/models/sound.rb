class Sound < ActiveRecord::Base
  belongs_to :user

  # filling user_id from User.current_user with sentient_user plugin
  before_create { |record| record.user = User.current }
end

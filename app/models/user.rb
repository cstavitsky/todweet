class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :tasks, foreign_key: :compweeter_id


end

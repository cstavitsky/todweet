class User < ActiveRecord::Base
  has_many :tasks, foreign_key: :compweeter_id
end

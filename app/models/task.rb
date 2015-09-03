class Task < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :compweeter, class_name: "User"
end

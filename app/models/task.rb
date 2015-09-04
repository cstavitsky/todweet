class Task < ActiveRecord::Base
  belongs_to :compweeter, class_name: "User"
end

class Task < ActiveRecord::Base
  belongs_to :compweeter, class_name: "User"

  def compweet=(status)
    self.completed = status
  end

  def tweet
    # tweet the task to the specified people
  end
end

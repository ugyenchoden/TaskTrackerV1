class Task < ApplicationRecord
  belongs_to :user
  
  enum status: {
    open: 'Open',
    in_progress: 'In Progress',
    completed: 'Completed'
  }
end

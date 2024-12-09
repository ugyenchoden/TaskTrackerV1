class Task < ApplicationRecord
  belongs_to :user
  
  # new syntax in rails 7 and above
  # before 7
  # enum status: { open: 1, in_progress: 2}
  enum :status, { open: 1, in_progress: 2, completed: 3 }
end

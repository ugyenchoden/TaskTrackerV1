module Tasks 
  class Creator < BaseService
    def call
      task = Task.new(attributes.merge(user_id: current_user.id))
      # authorize(task, :create?)
      task.save!
      task
    end
  end
end
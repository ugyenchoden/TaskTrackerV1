module Tasks 
  class Creator < BaseService
    def call
      binding.pry
      task = Task.new(attributes)
      # authorize(task, :create?)
      task.save!
      task
    end
  end
end
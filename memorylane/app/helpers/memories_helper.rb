module MemoriesHelper
  def sti_memory_path(category = "memory", memory = nil, action = nil)
    send "#{format_sti(action, category, memory)}_path", memory
  end

  def format_sti(action, category, memory)
    action || memory ? "#{format_action(action)}#{category.underscore}" : "#{category.underscore.pluralize}"
  end

  def format_action(action)
    action ? "#{action}_" : ""
  end
end

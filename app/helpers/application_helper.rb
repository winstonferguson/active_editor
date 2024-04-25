module ApplicationHelper

  def turbo_id(record_or_class, prefix = nil)
    return dom_id(record_or_class, prefix) if record_or_class.persisted?
  
    dom_id(record_or_class, 'new_' + rand(999999).to_s)
  end
end

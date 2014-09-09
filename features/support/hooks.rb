Before do
  # Do something before each scenario.
end
Before do |scenario|
  # The +scenario+ argument is optional, but if you use it, you can get the title,
  # description, or name (title + description) of the scenario that is about to be
  # executed.
  #Rails.logger.debug "Starting scenario: #{scenario.title}"
end

After do |scenario|
  # Do something after each scenario.
  # The +scenario+ argument is optional, but
  # if you use it, you can inspect status with
  # the #failed?, #passed? and #exception methods.

  # if(scenario.failed?)
  #   subject = "[Project X] #{scenario.exception.message}"
  #   send_failure_email(subject)
  # end
end

Before('@cucumis', '~@sativus') do
  # This will only run before scenarios tagged
  # with @cucumis AND NOT @sativus.
end

Before('@cucumis, @sativus', '@aqua') do
  # This will only run before scenarios tagged
  # with (@cucumis OR @sativus) AND @aqua 
end
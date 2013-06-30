Before do
  require 'capybara/poltergeist'
  Capybara.register_driver :poltergeist_debug do |app|
    Capybara::Poltergeist::Driver.new(app, :inspector => true)
  end

  Capybara.current_driver = :poltergeist
  # Capybara.current_driver = :poltergeist_debug
end

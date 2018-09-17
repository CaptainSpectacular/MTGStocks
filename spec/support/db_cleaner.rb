# Database cleaner configuration. Clean database before and after each test is run.
DatabaseCleaner.strategy = :truncation

RSpec.configure do |c|
  c.before(:each) do
    DatabaseCleaner.clean
  end

  c.after(:each) do
    DatabaseCleaner.clean
  end
end


require 'rake/testtask'

# Sources:   -------------------------------------------------------------------
# - how-to:    https://aws.amazon.com/blogs/developer/running-your-minitest-unit-test-suite/
# - namespace: https://railsguides.net/how-to-generate-rake-task/
# ------------------------------------------------------------------------------

# --------- Template ---------
# Rake::TestTask.new do |t|
#   t.libs.push 'test'
#   t.pattern = 'test/**/*_test.rb'
#   t.warning = true
#   t.verbose = true
# end
# ----------------------------

# ------------------------------------------------------------------------------
#   ----  Exercism  ----
# ------------------------------------------------------------------------------

# --- book_store tests ---
namespace :book_store_tests do
  Rake::TestTask.new do |t|
    t.libs.push 'test'
    t.pattern = './exercism/book_store/test/**/*_test.rb'
    t.warning = true
    t.verbose = true
  end
end # RUN with: rake book_store_tests:test





# ---------------------------------

task :default => :test

desc 'Generates a coverage report'
task :coverage do
  ENV['COVERAGE'] = 'true'
  Rake::Task['test'].execute
end

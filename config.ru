require './config/environment'

# if ActiveRecord::Base.connection.migration_context.needs_migration?
if defined?(ActiveRecord::Migrator) && ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

run ApplicationController

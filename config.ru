require './config/environment'

# if ActiveRecord::Base.connection.Migrator.needs_migration?
#   raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
# end

run ApplicationController

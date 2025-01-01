class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  class << self
    def switch_schema(schema_name)
      ActiveRecord::Base.connection.schema_search_path = schema_name
    end

    def drop_schema!(schema_name)
      ActiveRecord::Base.connection.execute("DROP SCHEMA IF EXISTS #{schema_name} CASCADE")
    end

    def create_and_migrate_schema!(schema_name)
      ActiveRecord::Base.connection.execute("CREATE SCHEMA IF NOT EXISTS #{schema_name}")
      ActiveRecord::Base.connection.schema_search_path = schema_name
      migrations_path = File.join(Dir.pwd, 'db', 'migrate')

      migration_context = ActiveRecord::MigrationContext.new(migrations_path, ActiveRecord::SchemaMigration)
      migration_context.migrate
    end
  end
end

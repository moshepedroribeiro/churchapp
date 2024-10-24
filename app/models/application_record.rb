class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  class << self
    def switch_schema(schema_name)
      ActiveRecord::Base.connection.schema_search_path = schema_name
    end

    def create_schema(schema_name)
      ActiveRecord::Base.connection.execute("CREATE SCHEMA #{schema_name}")
    end

    def drop_schema(schema_name)
      ActiveRecord::Base.connection.execute("DROP SCHEMA IF EXISTS #{schema_name} CASCADE")
    end

    def migrate_schema(schema_name)
      ActiveRecord::Base.connection.execute("CREATE SCHEMA IF NOT EXISTS #{schema_name}")
      ActiveRecord::Base.connection.schema_search_path = schema_name
      ActiveRecord::Migrator.migrate('db/migrate')
    end
  end
end

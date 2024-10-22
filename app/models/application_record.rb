class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  class << self
    def switch_schema(schema_name)
      ActiveRecord::Base.connection.schema_search_path = schema_name
    end
  end
end

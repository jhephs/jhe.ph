# SEE: https://www.krautcomputing.com/blog/2014/01/10/how-to-drop-your-postgres-database-with-rails-4/
module ActiveRecord
  module Tasks
    class PostgreSQLDatabaseTasks
      def drop
        establish_master_connection
        connection.select_all(
          'SELECT pg_terminate_backend(pg_stat_activity.pid) '\
          'FROM pg_stat_activity '\
          "WHERE datname='#{configuration['database']}' AND state='idle';"
        )
        connection.drop_database configuration['database']
      end
    end
  end
end

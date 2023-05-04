class PppProcesosTest < ActiveRecord::Base
  self.table_name = 'ppp_procesos'
  
  def self.all_columns
    connection.columns(table_name).map(&:name)
    { columns: connection.columns(table_name).map(&:name) }
  end
end

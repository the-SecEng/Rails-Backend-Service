class PppProcesosTest < ActiveRecord::Base
  self.table_name = 'ppp_procesos'
  
  def self.all_columns
    connection.columns(table_name).map(&:name)
    { columns: connection.columns(table_name).map(&:name) }
  end
end





# class Procesos < ApplicationRecord
#     # Model attributes and associations
#     @ppp_procesos = ppp_procesos.all
# end

# class PPP_PROCESOS < ApplicationRecord
#     self.table_name = 'ppp_procesos'
#   end
  

# class CreatePPprocesos < ActiveRecord::Migration[6.1]
#     def change
#       create_table :ppp_procesos do |t|
#         t.string :nombre
#         t.string :creado_por_empleado
#         t.string :ppp_cat_tipos_procesos_uuid
#         t.string :es_publico
#         t.string :descripcion
#         t.string :codigo
#         t.string :empleado_mentor
#         t.string :tiempo_ejecucion_nec
#         t.string :companies_uuid
#         t.string :url_imagen
#         t.string :status_autorizacion
  
#         t.timestamps
#       end
#     end
#   end
  
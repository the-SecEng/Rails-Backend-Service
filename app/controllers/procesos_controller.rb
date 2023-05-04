# class ProcesosController < ApplicationController
#     def show
#       id = params[:id]
#       file_path = Rails.root.join('app', 'data', ' ppp_procesos.json')
#       file_contents = File.read(file_path)
#       data = JSON.parse(file_contents)
  
#       proceso = data.find { |p| p['id'] == id }
#       if proceso.nil?
#         render json: { error: 'Proceso not found' }, status: :not_found
#       else
#         render json: proceso['proceso']
#       end
#     end
#   end
  


# Test

class ProcesosController < ApplicationController
  def index
    procesos = PppProcesosTest.all
    render json: procesos
  end

  def show
    proceso = PppProcesosTest.find_by(id: params[:id])
    if proceso.nil?
      render json: { error: 'Proceso not found' }, status: :not_found
    else
      render json: proceso
    end
  end
end





# class ProcesosController < ApplicationController
#   def show
#     @proceso = PppProcesosTest.all_columns(id: params[:id])
#     if @proceso.nil?
#       render json: { error: 'Proceso not found' }, status: :not_found
#     else
#       render json: @proceso
#     end
#   end
# end


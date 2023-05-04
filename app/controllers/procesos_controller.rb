class ProcesosController < ApplicationController
    def show
        id = params[:id]
        file_path = Rails.root.join('app', 'data', "proceso_#{id}.json")
        file_contents = File.read(file_path)
        data = JSON.parse(file_contents)
        render json: data
    end
end

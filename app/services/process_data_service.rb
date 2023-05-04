class ProcessService
    def get_process_by_id(id)
      file_path = Rails.root.join('app', 'data', 'ppp_procesos.json')
      file_contents = File.read(file_path)
      data = JSON.parse(file_contents)
  
      proceso = data.find { |p| p['id'] == id }
  
      if proceso.nil?
        # handle error case
      else
        # create and return Process object from proceso hash
      end
    end
  end
  
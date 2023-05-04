class ProcessService
    def get_process_by_id(id)
      file_path = Rails.root.join('app', 'data', 'ppp_procesos.json')
      file_contents = File.read(file_path)
      data = JSON.parse(file_contents)
      process = data.find { |p| p['id'] == id }
      if process.nil?
        { error: 'Process not found' }
      else
        process['proceso']
      end
    end
  
    def get_all_processes
      file_path = Rails.root.join('app', 'data', 'ppp_procesos.json')
      file_contents = File.read(file_path)
      data = JSON.parse(file_contents)
      data.map { |process| process['proceso'] }
    end
  end
  
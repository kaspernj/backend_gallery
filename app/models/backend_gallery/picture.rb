class BackendGallery::Picture < ActiveRecord::Base
  translates :title
  
  def set_from_upload(file)
    File.open(path, "w") do |fw|
      file.open do |fr|
        until fr.eof?
          read = fr.sysread
          fw.write(read)
        end
      end
    end
  end
  
  def path
    return "#{BackendGallery.path}/#{id}.data"
  end
  
  def user_link
    return "[no user]" if user_id.to_i <= 0
    return "(#{user_type}) #{user_id}"
  end
  
  before_destroy :delete_file
  def delete_file
    File.unlink(path) if File.exists?(path)
  end
end

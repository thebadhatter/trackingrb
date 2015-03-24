class Server < Sinatra::Base
  configure do
    #  Load up database and such
  end
end

# Load all route files
Dir[File.dirname(__FILE__) + "/apps/routes/**"].each do |route|
  require route
end

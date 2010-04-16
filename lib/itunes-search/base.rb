module ItunesSearch 

  ENDPOINT = "http://ax.phobos.apple.com.edgesuite.net/WebObjects/MZStoreServices.woa/wa/wsSearch"
  
  class Base
   
    def search(*args)
      return ItunesSearch::Search.new(*args)  
    end  
  end
end
module ItunesSearch 


  @endpoint = "http://ax.phobos.apple.com.edgesuite.net/WebObjects/MZStoreServices.woa/wa/wsSearch" 

  def self.endpoint=(ep)
    @endpoint = ep
  end
  def self.endpoint
    @endpoint
  end

  class Base
   
    def search(*args)
      return ItunesSearch::Search.new(*args)  
    end  

  end

end

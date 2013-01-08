module ItunesSearch 
  @endpoint = "http://ax.phobos.apple.com.edgesuite.net/WebObjects/MZStoreServices.woa/wa/wsSearch" 
  def self.endpoint=(ep)
    @endpoint = ep
  end
  def self.endpoint
    @endpoint
  end
  def search(*args)
    ItunesSearch::Search.new(*args)
  end
  class Base
    def search(*args)
      ItunesSearch::Search.new(*args)  
    end  
  end
end

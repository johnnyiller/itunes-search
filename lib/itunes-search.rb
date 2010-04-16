module ItunesSearch

  $LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
  $LOAD_PATH.unshift(File.dirname(__FILE__))

 # require '*'
  require 'hash_extension'
  require 'net/http'
  require 'uri'
  require 'json'
  require 'search'
  require 'result'

  ENDPOINT = "http://ax.phobos.apple.com.edgesuite.net/WebObjects/MZStoreServices.woa/wa/wsSearch"

  class Base
   
    def search(*args)
      return ItunesSearch::Search.new(*args)  
    end  
  end
end
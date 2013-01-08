require 'ostruct'
module ItunesSearch
  
  class Search
    attr_accessor :options, :result_hash, :json
    
    def initialize(*args)
      @options = args.inject({}) { |result, element| element.merge(result); element  }
    end
    
    def results
      to_hash.empty? ? [] : to_hash["results"].collect { |r| OpenStruct.new(r) } 
    end

    protected
    def fetch
      uri = URI.parse("#{itunes_endpoint}?#{options.to_url_params}")
      @json ||= Net::HTTP.start(uri.host,uri.port) do |http|
        http.open_timeout=5
        http.read_timeout=5
        http.get("#{uri.path}?#{options.to_url_params}")
      end.body
    end
    def to_hash
      @result_hash ||= JSON.parse(fetch)
    end
    def itunes_endpoint
      ItunesSearch.endpoint
    end
  end
end

module ItunesSearch
  
  class Search
    attr_accessor :options, :result_hash, :json
    alias :original_method_missing :method_missing
    
    def initialize(*args)
      self.options={}
      args.each do |arg|
        self.options.merge!(arg)
      end
    end

    def method_missing(method_name,*args)
      if args.size == 1
        self.options.merge!({"#{method_name.to_s.gsub("=","")}"=>args.first.to_s})
        return self.options["#{method_name.to_s.gsub("=","")}"]
      elsif args.size == 0
        if self.options.keys.include?(method_name.to_s)
          return self.options["#{method_name.to_s.gsub("=","")}"]
        end
      end
      original_method_missing method_name, args
    end

    def fetch
      #puts "#{ItunesSearch::ENDPOINT}?#{self.options.to_url_params}"
      if ENV['http_proxy']
        proxy_uri = URI.parse(ENV['http_proxy'])
        http = Net::HTTP.Proxy(proxy_uri.host, proxy_uri.port)
      else
        http = Net::HTTP
      end
      
      uri = URI.parse("#{ItunesSearch::ENDPOINT}?#{self.options.to_url_params}")
      resp = http.start(uri.host,uri.port) do |http|
        http.open_timeout=5
        http.read_timeout=5
        http.get("#{uri.path}?#{self.options.to_url_params}")
      end
      self.json = resp.body
    end

    def results 
      ra = []

      self.to_hash["results"].collect {|r| ItunesSearch::Result.new(r)} unless self.to_hash["results"].empty?
    end
    
    def to_hash
      self.result_hash ||= JSON.parse(fetch)
    end
    
  end
end
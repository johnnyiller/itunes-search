require 'rubygems'
require 'net/http'
require 'uri'
require 'json'
require "cgi"


class Hash
  def to_url_params
    elements = []
    keys.size.times do |i|
      elements << "#{CGI::escape(keys[i])}=#{CGI::escape(values[i])}"
    end
    elements.join('&')
  end 
end
 

directory = File.expand_path(File.dirname(__FILE__))
require File.join(directory,"itunes-search", "base")
require File.join(directory,"itunes-search","search")
require File.join(directory,"itunes-search","result")
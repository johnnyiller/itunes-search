require 'rubygems'
require 'net/http'
require 'uri'
require 'json'
require "cgi"


class Hash
  def to_url_params
    collect { |key,value| "#{CGI::escape(key)}=#{CGI::escape(value)}" }.join('&')
  end 
end
 

directory = File.expand_path(File.dirname(__FILE__))
require File.join(directory,"itunes-search", "base")
require File.join(directory,"itunes-search","search")

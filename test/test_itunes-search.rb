require 'helper'
require 'itunes-search'

class TestItunesSearch < Test::Unit::TestCase
  
  include ItunesSearch
  
  context "Search working" do
    setup do 
      @base = Base.new()
    end
    context "change endpoint proxy" do 
      should "be able to set endpoint" do
        ItunesSearch.endpoint = "http://localhost.com"
        assert_equal "http://localhost.com", ItunesSearch.endpoint
        ItunesSearch.endpoint = nil
      end
    end
    context "module method" do 
      should "be able to search without creating object" do
        assert search("term"=>"The Killers").results.first.trackViewUrl!=""
      end
    end
    context "Band exists on itunes" do 
      setup do 
        @so = @base.search("term"=>"The Killers")
      end
      should "have result set" do
        assert @so.results.size>0
      end
      should "be able to get first url" do 
        assert !@so.results.first.trackViewUrl!=""
      end
      should "not be empty" do 
        assert !@so.results.empty?
      end
    end
    context "Band does not exist on itunes" do 
      setup do 
        @so = @base.search("term"=>"dsafjlkdsajflkjdsa")
      end
      should "have empty result set" do
        assert @so.results.empty?
      end
    end
  end
end

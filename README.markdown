= itunes-search

This was created for use on musicxray.com if you think you can do better send your resume to jeff at musicxray.com

[![Build Status](https://travis-ci.org/johnnyiller/itunes-search.png?branch=master)](https://travis-ci.org/johnnyiller/itunes-search)

== Installation

	gem install itunes-search
	
== Usage
<code>
base = Itunes::Base.new
search_object = base.search("term"=>"The Killers")
</code>
	
	# get an array of the search_objects
<code>
results = search_object.results
results.each do |result|
puts result.trackViewUrl
end
	
puts result.attributes
</code>


== Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

== Copyright

Copyright (c) 2010 jeff durand. See LICENSE for details.

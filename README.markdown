#itunes-search

This was created for use on musicxray.com if you think you can do better send your resume to jeff at musicxray.com

[![Build Status](https://travis-ci.org/johnnyiller/itunes-search.png?branch=master)](https://travis-ci.org/johnnyiller/itunes-search)

[![Dependency Status](https://gemnasium.com/johnnyiller/itunes-search.png)](https://gemnasium.com/johnnyiller/itunes-search)

##Installation
<pre>
gem install itunes-search
</pre>
	
##Usage
```ruby
require 'itunes-search'


results = ItunesSearch.search("term"=>"The Killers").results

results.each do |result|
  puts result.trackViewUrl
end
```
	

##Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

##Copyright

Copyright (c) 2012 jeff durand. See LICENSE for details.

require 'bootstrap-sass'
require 'erubis'
require 'tilt'
require 'readmore'

Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::Posts.new( '/posts', :posts)
  extension Awestruct::Extensions::Paginator.new( :posts, '/index', :per_page => 10 )
  
  extension Awestruct::Extensions::Paginator.new( :posts, '/blog', :per_page => 10 )
  extension Awestruct::Extensions::Tagger.new( :posts, '/index', '/posts/tags', :per_page => 10, :layout=>'post')
  
  extension Awestruct::Extensions::TagCloud.new( :tagcloud, '/posts/tags/index.html', :layout=>'base', :title=>'Tags')
  extension Awestruct::Extensions::Disqus.new

  #extension Awestruct::Extensions::Indexifier.new
  extension Awestruct::Extensions::Atomizer.new( :posts, '/feed.atom', :feed_title=>'mgreau Blog' )
  extension Awestruct::Extensions::Sitemap.new

  helper Awestruct::Extensions::Partial
  helper Awestruct::Extensions::GoogleAnalytics
  helper Awestruct::Extensions::ReadMore
end

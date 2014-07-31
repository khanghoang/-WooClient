Pod::Spec.new do |s|
  s.name         = 'WSSharedClasses'
  s.version      = '0.1'
  s.summary      = 'This is the client for Woo Commerce'
  s.homepage     = 'nssubject.com'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Khang Hoang' => 'hoangtrieukhang@gmail.com' }
  s.source       = { :git => 'git@bitbucket.org:hoangtrieukhang/wooshop.git', :tag => 'v1.0' }
  s.source_files = 'WSSharedClasses'
  s.frameworks   = 'Foundation'
  s.requires_arc = true
  s.social_media_url   = "https://twitter.com/khanght"
end
[http]
sslCAinfo = /hoangtrieukhang/certs/cacert.pem



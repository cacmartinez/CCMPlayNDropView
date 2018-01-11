Pod::Spec.new do |s|
  s.name         = "CCMPlayNDropView"
  s.version      = "1.0"
  s.summary      = "This is a swarm style dismissable view, you can move it around the screen flick it away, or drop it anywhere to dismiss it"
  s.homepage     = "https://github.com/cacmartinez/CCMPlayNDropView.git"
  s.license      = "Apache License, Version 2.0"
  s.author       = { "Carlos Compean" => "cacmartinez@msn.com" }
  s.platform     = :ios, '8.0'
  s.source       = { :git => 'https://github.com/cacmartinez/CCMPlayNDropView.git', :tag => s.version }
  s.source_files = 'CCMPlayNDropView/*.{h,m}'
end

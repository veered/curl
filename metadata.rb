name             "curl"
maintainer       "Lucas Hansen"
maintainer_email "lucash@opscode.com"
license          "MIT"
description      "Installs curl"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "1.0.0"

recipe "curl",        "Installs curl"

depends "windows"

%w[debian ubuntu windows].each do |os|
  supports os
end

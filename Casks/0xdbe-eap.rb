cask :v1 => '0xdbe-eap' do
  version '143.109.1'
  sha256 '53b106c54610f3af6ed5cb1ad196f961ab5d9cc378fe6f20c317a72914cb3ecd'

  url "https://download.jetbrains.com/dbe/0xdbe-#{version}-custom-jdk-bundled.dmg"
  name '0xDBE EAP'
  name '0xDBE'
  homepage 'https://confluence.jetbrains.com/display/DBE/0xDBE+1.0+EAP'
  license :commercial

  app '0xDBE EAP.app'

end

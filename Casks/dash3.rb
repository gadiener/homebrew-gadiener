cask 'dash3' do
  version '3.4.3'
  sha256 'a7fd1a759965d26a0de6a43b32aec857e3222fd02d4cfc6d0ef66a92da63d526'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: '1cedfe90c21e4094e6841a99176773d5705c84d85b7ab34f80582461695e1624'
  name 'Dash'
  homepage 'https://kapeli.com/dash'

  auto_updates true

  app 'Dash.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/Dash',
                '~/Library/Application Support/com.kapeli.dashdoc',
                '~/Library/Preferences/com.kapeli.dash.plist',
                '~/Library/Preferences/com.kapeli.dashdoc.plist',
              ]
end

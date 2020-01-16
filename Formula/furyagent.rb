class Furyagent < Formula
  furyagent_VERSION = "v0.14".freeze

  desc "Installs Sighup Furyagent from github"
  homepage "https://github.com/sighupio/furyagent"
  url "https://github.com/sighupio/furyagent/releases/download/v#{furyagent_VERSION}/furyagent-darwin-amd64"
  sha256 'b7a02c1ef007df54a1266f3675e71742afecb4ab307d46cae945ca11917862c9'

  bottle :unneeded
 
  #if was previously installed manually in another path
  conflicts_with "furyagent", :because => "furyagent binary is owned by this setup"
  
    def install
      bin.install 'furyagent'
    end
    
    test do
      system "#{bin}/furyagent"
    end
end

# This file was generated by GoReleaser. DO NOT EDIT.
class Furyagent < Formula
  desc "Fury Agent binary"
  homepage "https://gihub.com/sighupio/furyagent"
  version "0.0.11"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sighupio/furyagent/releases/download/v0.0.11/furyagent-darwin-amd64.tar.gz"
    sha256 "f8c7f7d52d0ac02d05f80a5dcffc606a983c82a0125a6e3745f4283c81b3ee0f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sighupio/furyagent/releases/download/v0.0.11/furyagent-linux-amd64.tar.gz"
      sha256 "7c123847af2a90d3049c998f3bc7295ce51ab803b1381efd45fee93aab582a98"
    end
  end
  
  conflicts_with "furyagent"

  def install
    bin.install 'furyagent'
  end

  test do
    system "#{bin}/furyagent"
  end
end

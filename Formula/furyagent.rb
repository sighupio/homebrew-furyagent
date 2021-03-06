# This file was generated by GoReleaser. DO NOT EDIT.
class Furyagent < Formula
  desc "Fury Agent binary"
  homepage "https://gihub.com/sighupio/furyagent"
  version "0.2.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sighupio/furyagent/releases/download/v0.2.2/furyagent-darwin-amd64.tar.gz"
    sha256 "285bbdf5bc759f4e3d1eee8cedb0935c93b5d24ee4070f9686e7c84f7581001f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sighupio/furyagent/releases/download/v0.2.2/furyagent-linux-amd64.tar.gz"
      sha256 "079dc94dbcdedb891b515fa172aa3826fd941ec5f245585224112eb5c6e9768b"
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

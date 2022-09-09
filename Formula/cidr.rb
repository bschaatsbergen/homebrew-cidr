# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cidr < Formula
  desc "ntest is a cross-platform cli app that runs multiple tests against any address."
  homepage "https://github.com/bschaatsbergen/cidr"
  version "0.1.2"
  license "MIT"

  on_macos do
    url "https://github.com/bschaatsbergen/cidr/releases/download/v0.1.2/cidr_0.1.2_darwin_amd64.tar.gz"
    sha256 "f991429ac33bca1ae20d146cdf67b2ba5544283f06bb3b25e3d73c678898b591"

    def install
      bin.install "cidr"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Cidr
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bschaatsbergen/cidr/releases/download/v0.1.2/cidr_0.1.2_linux_amd64.tar.gz"
      sha256 "d4aa9b629e1ce218b3a7c302cca7da419eae9b24ffb7974139067e27803ff47d"

      def install
        bin.install "cidr"
      end
    end
  end

  test do
    system "#{bin}/cidr -v"
  end
end

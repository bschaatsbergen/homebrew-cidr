# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cidr < Formula
  desc "CLI to perform various actions on CIDR ranges"
  homepage "https://github.com/bschaatsbergen/cidr"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bschaatsbergen/cidr/releases/download/v1.0.2/cidr_1.0.2_darwin_amd64.tar.gz"
      sha256 "bafb9aef40f95d19a1aa6fdcfc2bef97bf27e363b6caa2d40c44375f30a439a9"

      def install
        bin.install "cidr"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bschaatsbergen/cidr/releases/download/v1.0.2/cidr_1.0.2_darwin_arm64.tar.gz"
      sha256 "f29d3927185364ae3e2ebfcaa44604051729af023f51c08535106d880fc0c7b2"

      def install
        bin.install "cidr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bschaatsbergen/cidr/releases/download/v1.0.2/cidr_1.0.2_linux_arm64.tar.gz"
      sha256 "695b83e774613541af98a1dbef96fd2568678edbf4b58a42503c4548d7578456"

      def install
        bin.install "cidr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bschaatsbergen/cidr/releases/download/v1.0.2/cidr_1.0.2_linux_amd64.tar.gz"
      sha256 "b0f9d8b6d86fd541d9acc27b34bf2aebc9e33a8149e89ecbe072002943c43710"

      def install
        bin.install "cidr"
      end
    end
  end

  test do
    system "#{bin}/cidr -v"
  end
end

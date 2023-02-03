# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fireql < Formula
  desc "Query Google Firestore database using SQL syntax."
  homepage "https://github.com/pgollangi/FireQL"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "http://github.com/pgollangi/FireQL/releases/download/v0.3.0/fireql_Darwin_x86_64.tar.gz"
      sha256 "9d06a72fb8086d64df54e8ea77057f949e81899f6a696a23859d4bb83bed1f25"

      def install
        bin.install "fireql"
      end
    end
    if Hardware::CPU.arm?
      url "http://github.com/pgollangi/FireQL/releases/download/v0.3.0/fireql_Darwin_arm64.tar.gz"
      sha256 "c2926361956baa1b51eebdfec87c324da1d46551e659e7c0258f9d864bcf04a6"

      def install
        bin.install "fireql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "http://github.com/pgollangi/FireQL/releases/download/v0.3.0/fireql_Linux_arm64.tar.gz"
      sha256 "2ed007203e83273a86f27d8ee83fc5a7098a29a85b88da10543386c5c7cbdfd0"

      def install
        bin.install "fireql"
      end
    end
    if Hardware::CPU.intel?
      url "http://github.com/pgollangi/FireQL/releases/download/v0.3.0/fireql_Linux_x86_64.tar.gz"
      sha256 "96bc7d1044f960ff269e346e2fb2cbe1d92e3975206a3bbad7e4468ac4690a45"

      def install
        bin.install "fireql"
      end
    end
  end

  test do
    system "#{bin}/fireql --version"
  end
end

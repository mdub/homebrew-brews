# frozen_string_literal: true

class Swa < Formula
  desc "Alternative CLI for AWS (AWS backwards)"
  homepage "https://github.com/mdub/swa"
  url "https://rubygems.org/downloads/swa-1.0.0.gem"
  sha256 "e214e6f5c50504d90e34f77ddbfc0f77e83defc8b153e3bd76764141d3bf7a66"
  license "MIT"

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "install", cached_download, "--no-document",
           "--install-dir", libexec
    bin.install_symlink libexec/"bin/swa"
  end

  test do
    assert_match "SWA is AWS, backwards", shell_output("#{bin}/swa --help")
  end
end

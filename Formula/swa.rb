class Swa < Formula
  desc "Alternative CLI for AWS (AWS backwards)"
  homepage "https://github.com/mdub/swa"
  url "https://github.com/mdub/swa/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "2f5aeb1a54c0e1ba9109912ba42c1668fa92b4c11899caab9899b5537cd036fd"
  license "MIT"
  head "https://github.com/mdub/swa.git", branch: "master"

  depends_on "ruby"

  def install
    ENV.prepend_path "PATH", Formula["ruby"].opt_bin
    ENV["BUNDLE_VERSION"] = "system"
    ENV["GEM_HOME"] = libexec
    ENV["GEM_PATH"] = libexec

    system "bundle", "config", "set", "without", "development", "test"
    system "bundle", "install"
    system "gem", "build", "#{name}.gemspec"
    system "gem", "install", "#{name}-#{version}.gem"

    bin.install libexec/"bin/#{name}"
    bin.env_script_all_files libexec/"bin",
      GEM_HOME: ENV["GEM_HOME"],
      GEM_PATH: ENV["GEM_PATH"]
  end

  test do
    system bin/"swa", "--help"
  end
end

# frozen_string_literal: true

class Dbq < Formula
  desc "Simple CLI for executing SQL queries against Databricks"
  homepage "https://github.com/mdub/dbq"
  url "https://github.com/mdub/dbq/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "72ddf51b4e8e212b74e2d6651ad8c6349f1380e3a984090d91e6e7f05867a942"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "dbq", shell_output("#{bin}/dbq --help")
  end
end

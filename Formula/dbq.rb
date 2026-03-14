# frozen_string_literal: true

class Dbq < Formula
  desc "Simple CLI for executing SQL queries against Databricks"
  homepage "https://github.com/mdub/dbq"
  url "https://github.com/mdub/dbq/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "a3354d42f98aaef46cf8075afa14293cabfac8d7ddd3f77c44e2f1419ecd6e6e"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "dbq", shell_output("#{bin}/dbq --help")
  end
end

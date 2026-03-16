# frozen_string_literal: true

class Dbq < Formula
  desc "Simple CLI for executing SQL queries against Databricks"
  homepage "https://github.com/mdub/dbq"
  url "https://github.com/mdub/dbq/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "e4aac450a613b1e04cf9f065d92e054c82b9f358df0388e966f44c68c239e1a7"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "dbq", shell_output("#{bin}/dbq --help")
  end
end

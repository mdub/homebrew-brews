# frozen_string_literal: true

class Dbq < Formula
  desc "Simple CLI for executing SQL queries against Databricks"
  homepage "https://github.com/mdub/dbq"
  url "https://github.com/mdub/dbq/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "14b6a55e6e3c31c3fb0ade0e18bd9f186640423511983a8f298aa628d1a0e586"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "dbq", shell_output("#{bin}/dbq --help")
  end
end

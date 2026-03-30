# frozen_string_literal: true

class Dbq < Formula
  desc "Simple CLI for executing SQL queries against Databricks"
  homepage "https://github.com/mdub/dbq"
  url "https://github.com/mdub/dbq/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "ed812009c12ceb885723562d482d2b6c6c24f98fc3e870f0768d6e13af63af4a"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "dbq", shell_output("#{bin}/dbq --help")
  end
end

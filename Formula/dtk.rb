class Dtk < Formula
  desc "Structured payload preprocessing layer for AI assistants"
  homepage "https://github.com/Walter0697/DTK"
  url "https://github.com/Walter0697/DTK/archive/refs/tags/v0.0.7.tar.gz"
  sha256 "9d51e649e4a21539a1df10ddeee720de6265c8816e9bc6939d01e81b3a0e094f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "dtk", shell_output("#{bin}/dtk version")
  end
end

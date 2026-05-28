class Dtk < Formula
  desc "Structured payload preprocessing layer for AI assistants"
  homepage "https://github.com/Walter0697/DTK"
  url "https://github.com/Walter0697/DTK.git", branch: "main"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "dtk", shell_output("#{bin}/dtk version")
  end
end

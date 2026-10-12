class FigmaCli < Formula
  desc "Standalone CLI for Codex's Figma MCP tools (use Figma from scripts, CI, or any terminal)"
  homepage "https://github.com/gztcode/pi-figma-bridge"
  url "https://github.com/gztcode/pi-figma-bridge/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "7d000cb310238c3c18429d53a226b34f62c1acc2de8214601097376d75a81bfb"
  license "MIT"

  depends_on "python@3.9"

  def install
    bin.install "figma-cli"
  end

  test do
    assert_match "figma-cli", shell_output("#{bin}/figma-cli --help")
  end
end

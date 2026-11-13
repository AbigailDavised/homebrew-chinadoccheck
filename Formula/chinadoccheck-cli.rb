class ChinadoccheckCli < Formula
  desc "China Medical Doctor License Verification & NHC Credential Search CLI"
  homepage "https://chinadoccheck.com"
  url "https://registry.npmjs.org/cardworthscanner-cli/-/cardworthscanner-cli-1.0.2.tgz"
  sha256 "ca803e0fe17d3e0856bd7596b2cb2c8c0a9ce591f19dd409be774a0131a675de"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/chinadoccheck-cli", "--help"
  end
end

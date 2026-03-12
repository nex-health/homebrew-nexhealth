class Nexhealth < Formula
  desc "CLI for the NexHealth API"
  homepage "https://github.com/nex-health/nexhealth-cli"
  url "https://github.com/nex-health/homebrew-nexhealth/releases/download/v0.2.0/nexhealth-cli-0.2.0.tar.gz"
  sha256 "b3f34fa5ea2bed7b5942de5214df8724634760bfa5c47f17b40799d926a759ed"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nexhealth --version")
  end
end

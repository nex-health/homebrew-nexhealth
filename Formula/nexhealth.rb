class Nexhealth < Formula
  desc "CLI for the NexHealth API"
  homepage "https://github.com/nex-health/nexhealth-cli"
  url "https://github.com/nex-health/homebrew-nexhealth/releases/download/v0.4.0/nexhealth-cli-0.4.0.tar.gz"
  sha256 "f7a8a525563a3b687d18eaf46c6d7ba1b1d068f1a0d1ef3589c5381c1e1c753b"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<~EOS
      Get started:

        # New to NexHealth? Sign up and authenticate in one step:
        nexhealth auth signup

        # Already have an API key? Login interactively:
        nexhealth auth login

      Then configure your subdomain and location:

        nexhealth institutions list
        nexhealth config set subdomain your-practice-subdomain
        nexhealth locations list
        nexhealth config set location_id 12345

      Run `nexhealth --help` for all available commands.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nexhealth --version")
  end
end

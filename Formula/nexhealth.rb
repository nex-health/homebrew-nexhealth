class Nexhealth < Formula
  desc "CLI for the NexHealth API"
  homepage "https://github.com/nex-health/nexhealth-cli"
  url "https://github.com/nex-health/homebrew-nexhealth/releases/download/v0.3.4/nexhealth-cli-0.3.4.tar.gz"
  sha256 "2999c5853fd6de3e5ea2b9058b1c5c3f41691ac27b83ff8e4567d9e24d8d3405"
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

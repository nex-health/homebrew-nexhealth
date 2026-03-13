class Nexhealth < Formula
  desc "CLI for the NexHealth API"
  homepage "https://github.com/nex-health/nexhealth-cli"
  url "https://github.com/nex-health/homebrew-nexhealth/releases/download/v0.3.3/nexhealth-cli-0.3.3.tar.gz"
  sha256 "f342d5b3608cf3d1d73a7cb64a6418fff5d2d2dd9eb5fd6d536fb5114df14bb7"
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

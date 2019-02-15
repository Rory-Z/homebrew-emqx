class Emqx < Formula
  homepage "https://emqx.io"
  url "http://139.198.122.143/emqx-macos-v3.0.1.zip"
  sha256 "da42d75bc04a79415eec179f55466d59a4b7598af16aa6c63335f9f98fa05cbe"

  def install
    prefix.install Dir["*"]
    bin.install Dir[libexec/"/bin/emqx"]
    rm %W[#{bin}/emqx.cmd #{bin}/emqx_ctl.cmd]
  end

  def post_install
    system "mkdir", "-p", "#{prefix}/data/configs"
  end

  test do
    system emqx, "start"
    system emqx_ctl, "status"
    system emqx, "stop"
  end
end

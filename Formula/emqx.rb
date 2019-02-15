class Emqx < Formula
  homepage "https://emqx.io"
  url "http://139.198.122.143/emqx-macos-v3.0.1.zip"

  def install
    prefix.install Dir["*"]
    bin.install Dir[libexec/"/bin/emqx"]
    system "madir", "-p", "#{prefix}/data/configs"
    rm %W[#{bin}/emqx.cmd #{bin}/emqx_ctl.cmd]
  end

  test do
    system emqx, "start"
    system emqx_ctl, "status"
    system emqx, "stop"
  end
end

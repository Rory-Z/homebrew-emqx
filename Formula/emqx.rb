class Emqx < Formula
  homepage "https://emqx.io"
  url "https://github.com/emqx/emqx/releases/download/v3.0-rc.5/emqx-macosx-v3.0-rc.5.zip"

  def install
    prefix.install Dir["*"]
    bin.install Dir[libexec/"/bin/emqx"]
    rm %W[#{bin}/emqx.cmd #{bin}/emqx_ctl.cmd]
  end

  test do
    system emqx, "start"
    system emqx_ctl, "status"
    system emqx, "stop"
  end
end

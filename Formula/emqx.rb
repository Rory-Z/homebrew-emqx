class Emqx < Formula
  homepage "https://emqx.io"
  url "https://github.com/emqx/emqx/releases/download/v3.0-rc.5/emqx-macosx-v3.0-rc.5.zip"

  def install
    system "unzip emqx-macosx-v3.0-rc.5.zip"
  end
end

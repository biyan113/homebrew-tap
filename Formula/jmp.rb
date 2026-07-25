# typed: false
# This file is managed by GoReleaser. DO NOT EDIT.
class Jmp < Formula
  desc "Smart directory jumper - Go rewrite and enhancement of autojump"
  homepage "https://github.com/biyan113/jmp"
  version "0.2.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/biyan113/jmp/releases/download/v0.2.0/jmp_0.2.0_Darwin_arm64.tar.gz"
      sha256 "4e173499131c11cade611b2e394f4fcf0058734a7b89b748defafe6400bea686"
    end
    on_intel do
      url "https://github.com/biyan113/jmp/releases/download/v0.2.0/jmp_0.2.0_Darwin_amd64.tar.gz"
      sha256 "55085b89d04b1cc267f510dcea9d6361cdbd616841704de6609b4e6d09b2292e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/biyan113/jmp/releases/download/v0.2.0/jmp_0.2.0_Linux_arm64.tar.gz"
      sha256 "4cd7f1d704df1fdb07e8ce42bef414f410792a9f5b926f541c812f5bcec91d25"
    end
    on_intel do
      url "https://github.com/biyan113/jmp/releases/download/v0.2.0/jmp_0.2.0_Linux_amd64.tar.gz"
      sha256 "f260a7d7f4f72a8a417e10dff0c45790e99ee55b50e68b5473de1a7f9648df13"
    end
  end

  def install
    bin.install "jmp"
  end

  test do
    assert_match "jmp", shell_output("#{bin}/jmp version")
  end
end

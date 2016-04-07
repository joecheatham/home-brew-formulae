class Tapet < Formula
  desc "New OS X geometric wallpapers daily"
  homepage "https://github.com/joecheatham/tapet"
  url "https://github.com/joecheatham/tapet/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "2bd3019a21dea2739c130412f07f506bb5e692da79fa22b6987b435761abcade"
 
  bottle do
    cellar :any_skip_relocation
  end
  
  depends_on "golang" => :build
  
  def install
    ENV["GOBIN"] = bin
    ENV["GOPATH"] = buildpath
    ENV["GOHOME"] = buildpath
    system "go", "get"
    system "go", "build", "-o", "tapet"
    bin.install "tapet"
  end
end

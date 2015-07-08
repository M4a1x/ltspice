# Maintainer: Max Stabel <max dot stabel03 at gmail dot com>

pkgname=ltspice
pkgver=4.23b
pkgrel=1
pkgdesc="SPICE simulator, schematic capture and waveform viewer of electronic circuits for windows."
arch=('i686' 'x86_64')
url="http://www.linear.com/"
license=('custom')
depends=('wine')
makedepends=('git')
source=("ltspice::git+https://github.com/M4a1x/ltspice.git#branch=$pkgname"
        "$pkgname.sh")
md5sums=('SKIP'
        'e4201f86691af79e7312f22a3fa2a2f1')
#install=ltspice.install

package()
{
    # Install License
    install -m 755 "$srcdir/$pkgname/License.txt" "/usr/share/licenses/$pkgname"
    rm -f "$srcdir/$pkgname/License.txt"

    # Install binary files to /opt
    install -m 644 "$srcdir/$pkgname" "$pkgdir/opt/$pkgname"

    #Install /usr/bin startscript
    install -Dm755 "$pkgname.sh" "$pkgdir/usr/bin/$pkgname"
}

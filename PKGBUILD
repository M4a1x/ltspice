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
source=("$pkgname::git+https://github.com/M4a1x/$pkgname.git#branch=$pkgver"
        "$pkgname.sh"
        "$pkgname-help.sh")
md5sums=('SKIP'
        '47721d4d86a9af1895b1faa786c9a344'
        'b2fc547f37bd2a13d3e2e42c667dc13b')
#install=ltspice.install

package()
{
    # Install License
    install -D -m644 "$srcdir/$pkgname/License.txt" "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
    rm -f "$srcdir/$pkgname/License.txt"

    # Install binary files to /opt
    mkdir -p "$pkgdir/opt/$pkgname"
    cp -r "$srcdir/$pkgname" "$pkgdir/opt/$pkgname"
    chmod 755 -R "$pkgdir/opt/$pkgname"

    #Install /usr/bin startscript
    install -Dm755 "$pkgname.sh" "$pkgdir/usr/bin/$pkgname"
    install -Dm755 "$pkgname-help.sh" "$pkgdir/usr/bin/$pkgname-help"
}

# LTspiceXVII
LTspiceIV unmodified redistribution. Each distribution gets it's own branch. They contain the files of the installation folder of LTspiceXVII.
The master branch contains a script for extracting the installtion folder of the ".exe". 

## Contributing
### Updating
As this repository is updated by hand and the releases from Linear Technologies are quite frequent, pull requests are welcome.

Steps:
* Clone the repository: `git clone https://github.com/M4a1x/ltspice.git` (or use SSH if you prefer)
* Run the script and follow instructions (can be a bit hidden because of wine output) `sh ltspice/extract_install_folder.sh`
* `cd ltspice`
* `git checkout -b ${version-number}`
* `mv ../ltspice-installation/* .`
* git commit -a -m "Version ${version-number}`
* git push

Any help and suggestions are welcome. Especially regarding the extraction of the program files without starting the installer, i.e. by using linux tools.
